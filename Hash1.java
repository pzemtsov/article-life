import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

import static util.LongUtil.*;
import util.Point;

final class Hash1 extends Worker
{
    public static final int HASH_SIZE = 8192;

    private final LongPoint.Factory factory;
    private HashSet<LongPoint> field = new HashSet<LongPoint> (HASH_SIZE);
    private HashMap<LongPoint, Count> counts = new HashMap<LongPoint, Count> (HASH_SIZE);
    
    public Hash1 (LongPoint.Factory factory)
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
        counts.clear ();
    }
    
    @Override
    public Set<Point> get ()
    {
        HashSet<Point> result = new HashSet<Point> ();
        for (LongPoint p : field) {
            result.add (p.toPoint ());
        }
        return result;
    }
    
    private void inc (long w)
    {
        LongPoint key = factory.create (w);
        Count c = counts.get (key);
        if (c == null) {
            counts.put (key, new Count (1));
        } else {
            c.inc ();
        }
    }

    private void dec (long w)
    {
        LongPoint key = factory.create (w);
        if (! counts.get (key).dec ()) {
            counts.remove (key);
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
        field.add (k);
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
        field.remove (k);
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
        for (LongPoint w : field) {
            Count c = counts.get (w);
            if (c == null || c.value < 2 || c.value > 3) toReset.add (w);
        }
        for (LongPoint w : counts.keySet ()) {
            if (counts.get (w).value == 3 && ! field.contains (w)) toSet.add (w);
        }
        for (LongPoint w : toSet) {
            set (w);
        }
        for (LongPoint w : toReset) {
            reset (w);
        }
    }
}
