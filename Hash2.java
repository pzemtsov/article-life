import static util.LongUtil.DX;
import static util.LongUtil.DY;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

import util.Point;

final class Hash2 extends Worker
{
    public static final int HASH_SIZE = 8192;

    private final LongPoint.Factory factory;
    private HashMap<LongPoint, Value> field = new HashMap<LongPoint, Value> (HASH_SIZE);
    
    public Hash2 (LongPoint.Factory factory)
    {
        this.factory = factory;
    }

    @Override
    public String getName ()
    {
        return getClass().getName () + ":" + factory.create (0).getClass ().getName ();
    }

    @Override
    public void reset ()
    {
        field.clear ();
    }
    
    @Override
    public Set<Point> get ()
    {
        HashSet<Point> result = new HashSet<Point> ();
        for (LongPoint p : field.keySet ()) {
            if (field.get (p).live) {
                result.add (p.toPoint ());
            }
        }
        return result;
    }
    
    private void inc (long w)
    {
        LongPoint key = factory.create (w);
        Value c = field.get (key);
        if (c == null) {
            field.put (key, new Value (1));
        } else {
            c.inc ();
        }
    }

    private void dec (long w)
    {
        LongPoint key = factory.create (w);
        Value v = field.get (key);
        if (! v.dec () && ! v.live) {
            field.remove (key);
        }
    }
    
    void set (LongPoint k)
    {
        long w = k.v;
        inc (w-DX-DY);
        inc (w-DX);
        inc (w-DX+DY);
        inc (w-DY);
        inc (w+DY);
        inc (w+DX-DY);
        inc (w+DX);
        inc (w+DX+DY);
        Value c = field.get (k);
        if (c == null) {
            field.put (k,  new Value (0, true));
        } else {
            c.live = true;
        }
    }
    
    void reset (LongPoint k)
    {
        long w = k.v;
        dec (w-DX-DY);
        dec (w-DX);
        dec (w-DX+DY);
        dec (w-DY);
        dec (w+DY);
        dec (w+DX-DY);
        dec (w+DX);
        dec (w+DX+DY);
        Value v = field.get (k);
        if (v.count == 0) {
            field.remove (k);
        } else {
            v.live = false;
        }
    }
    
    @Override
    public void put (int x, int y)
    {
        set (factory.create (x, y));
    }
    
    @Override
    public void step ()
    {
        ArrayList<LongPoint> toReset = new ArrayList<LongPoint> ();
        ArrayList<LongPoint> toSet = new ArrayList<LongPoint> ();
        for (LongPoint w : field.keySet ()) {
            Value c = field.get (w);
            if (c.live) {
                if (c.count < 2 || c.count > 3) toReset.add (w);
            } else {
                if (c.count == 3) toSet.add (w);
            }
        }
        for (LongPoint w : toSet) {
            set (w);
        }
        for (LongPoint w : toReset) {
            reset (w);
        }
    }
}
