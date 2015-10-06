import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

import util.Point;

final class Hash_LongPoint extends Worker
{
    public static final int HASH_SIZE = 8192;

    private final LongPointFactory factory;
    private HashSet<LongPoint> field = new HashSet<LongPoint> (HASH_SIZE);
    private HashMap<LongPoint, Integer> counts = new HashMap<LongPoint, Integer> (HASH_SIZE);
    
    public Hash_LongPoint (LongPointFactory factory)
    {
        this.factory = factory;
    }

    @Override
    public String getName ()
    {
        return factory.create (0).getClass ().getName ();
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
    
    private void inc (LongPoint key)
    {
        Integer c = counts.get (key);
        counts.put (key, c == null ? 1 : c+1);
    }

    private void dec (LongPoint key)
    {
        int c = counts.get (key)-1;
        if (c != 0) {
            counts.put (key, c);
        } else {
            counts.remove (key);
        }
    }
    
    void set (LongPoint k)
    {
        for (LongPoint p : k.neighbours ()) {
            inc (p);
        }
        field.add (k);
    }
    
    void reset (LongPoint k)
    {
        for (LongPoint p : k.neighbours ()) {
            dec (p);
        }
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
            Integer c = counts.get (w);
            if (c == null || c < 2 || c > 3) toReset.add (w);
        }
        for (LongPoint w : counts.keySet ()) {
            if (counts.get (w) == 3 && ! field.contains (w)) toSet.add (w);
        }
        for (LongPoint w : toSet) {
            set (w);
        }
        for (LongPoint w : toReset) {
            reset (w);
        }
    }
}
