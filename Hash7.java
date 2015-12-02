import static util.LongUtil.DX;
import static util.LongUtil.DY;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map.Entry;
import java.util.Set;

import util.Point;

final class Hash7 extends Worker
{
    public static final int HASH_SIZE = 8192;

    private final LongPoint.Factory factory;
    private HashMap<LongPoint, Value> field = new HashMap<LongPoint, Value> (HASH_SIZE);
    private Entry<LongPoint, Value> [] toReset = new Entry [128];
    private Entry<LongPoint, Value> [] toSet = new Entry [128];
    
    public Hash7 (LongPoint.Factory factory)
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
    
    void set (LongPoint k, Value v)
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
        v.live = true;
    }
    
    void reset (LongPoint k, Value v)
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
        if (v.count == 0) {
            field.remove (k);
        } else {
            v.live = false;
        }
    }
    
    @Override
    public void put (int x, int y)
    {
        LongPoint k = factory.create (x, y);
        Value v = field.get (k);
        if (v == null) {
            field.put (k, v = new Value (0));
        }
        set (k, v);
    }
    
    @Override
    public void step ()
    {
        if (field.size () > toSet.length) {
            toReset = new Entry [field.size () * 2];
            toSet = new Entry [field.size () * 2];
        }
        int setCount = 0;
        int resetCount = 0;
        
        for (Entry<LongPoint, Value> w : field.entrySet ()) {
            Value c = w.getValue ();
            if (c.live) {
                if (c.count < 2 || c.count > 3) toReset[resetCount ++] = w;
            } else {
                if (c.count == 3) toSet[setCount ++] = w;
            }
        }
        for (int i = 0; i < setCount; i++) {
            set (toSet[i].getKey (), toSet[i].getValue ());
            toSet[i] = null;
        }
        for (int i = 0; i < resetCount; i++) {
            reset (toReset[i].getKey (), toReset[i].getValue ());
            toReset[i] = null;
        }
    }
}
