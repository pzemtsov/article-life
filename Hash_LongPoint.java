import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

final class Hash_LongPoint extends LongUtil implements Worker
{
    public static final int HASH_SIZE = 8192;

    private HashSet<LongPoint> field = new HashSet<LongPoint> (HASH_SIZE);
    private HashMap<LongPoint, Integer> counts = new HashMap<LongPoint, Integer> (HASH_SIZE);
    
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
        LongPoint key = new LongPoint (w);
        Integer c = counts.get (key);
        counts.put (key, c == null ? 1 : c+1);
    }

    private void dec (long w)
    {
        LongPoint key = new LongPoint (w);
        int c = counts.get (key)-1;
        if (c != 0) {
            counts.put (key, c);
        } else {
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
        set (new LongPoint (x, y));
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
