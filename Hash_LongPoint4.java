import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

final class Hash_LongPoint4 extends LongUtil implements Worker
{
    public static final int HASH_SIZE = 8192;

    private HashSet<LongPoint4> field = new HashSet<LongPoint4> (HASH_SIZE);
    private HashMap<LongPoint4, Integer> counts = new HashMap<LongPoint4, Integer> (HASH_SIZE);
    
    @Override
    public Set<Point> get ()
    {
        HashSet<Point> result = new HashSet<Point> ();
        for (LongPoint4 p : field) {
            result.add (p.toPoint ());
        }
        return result;
    }
    
    private void inc (long w)
    {
        LongPoint4 key = new LongPoint4 (w);
        Integer c = counts.get (key);
        counts.put (key, c == null ? 1 : c+1);
    }

    private void dec (long w)
    {
        LongPoint4 key = new LongPoint4 (w);
        int c = counts.get (key)-1;
        if (c != 0) {
            counts.put (key, c);
        } else {
            counts.remove (key);
        }
    }
    
    void set (LongPoint4 k)
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
    
    void reset (LongPoint4 k)
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
        set (new LongPoint4 (x, y));
    }
    
    @Override
    public void step ()
    {
        ArrayList<LongPoint4> toReset = new ArrayList<LongPoint4> ();
        ArrayList<LongPoint4> toSet = new ArrayList<LongPoint4> ();
        for (LongPoint4 w : field) {
            Integer c = counts.get (w);
            if (c == null || c < 2 || c > 3) toReset.add (w);
        }
        for (LongPoint4 w : counts.keySet ()) {
            if (counts.get (w) == 3 && ! field.contains (w)) toSet.add (w);
        }
        for (LongPoint4 w : toSet) {
            set (w);
        }
        for (LongPoint4 w : toReset) {
            reset (w);
        }
    }
}
