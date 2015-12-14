import static util.LongUtil.DX;
import static util.LongUtil.DY;

import java.util.HashSet;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

import util.LongUtil;
import util.Point;

final class TreeLife extends Worker
{
    private TreeMap<Long, Value> field = new TreeMap<Long, Value> ();
    private Entry<Long, Value> [] toReset = new Entry [128];
    private Entry<Long, Value> [] toSet = new Entry [128];
    
    public TreeLife ()
    {
    }

    @Override
    public String getName ()
    {
        return getClass().getName ();
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
        for (Long p : field.keySet ()) {
            if (field.get (p).live) {
                result.add (LongUtil.toPoint (p));
            }
        }
        return result;
    }
    
    private void inc (long w)
    {
        Long key = w;
        Value c = field.get (key);
        if (c == null) {
            field.put (key, new Value (1));
        } else {
            c.inc ();
        }
    }

    private void dec (long w)
    {
        Long key = w;
        Value v = field.get (key);
        if (! v.dec () && ! v.live) {
            field.remove (key);
        }
    }
    
    void set (Long k, Value v)
    {
        long w = k;
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
    
    void reset (Long k, Value v)
    {
        long w = k;
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
        Long k = LongUtil.fromPoint (x, y);
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
        
        for (Entry<Long, Value> w : field.entrySet ()) {
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
