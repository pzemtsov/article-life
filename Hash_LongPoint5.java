import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

final class Hash_LongPoint5 extends LongUtil implements Worker
{
    public static final int HASH_SIZE = 8192;

    private HashSet<LongPoint5> field = new HashSet<LongPoint5> (HASH_SIZE);
    private HashMap<LongPoint5, Integer> counts = new HashMap<LongPoint5, Integer> (HASH_SIZE);
    
    @Override
    public Set<Point> get ()
    {
        HashSet<Point> result = new HashSet<Point> ();
        for (LongPoint5 p : field) {
            result.add (p.toPoint ());
        }
        return result;
    }
    
    private void inc (long w)
    {
        LongPoint5 key = new LongPoint5 (w);
        Integer c = counts.get (key);
        counts.put (key, c == null ? 1 : c+1);
    }

    private void dec (long w)
    {
        LongPoint5 key = new LongPoint5 (w);
        int c = counts.get (key)-1;
        if (c != 0) {
            counts.put (key, c);
        } else {
            counts.remove (key);
        }
    }
    
    void set (LongPoint5 k)
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
    
    void reset (LongPoint5 k)
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
        set (new LongPoint5 (x, y));
    }
    
    @Override
    public void step ()
    {
        ArrayList<LongPoint5> toReset = new ArrayList<LongPoint5> ();
        ArrayList<LongPoint5> toSet = new ArrayList<LongPoint5> ();
        for (LongPoint5 w : field) {
            Integer c = counts.get (w);
            if (c == null || c < 2 || c > 3) toReset.add (w);
        }
        for (LongPoint5 w : counts.keySet ()) {
            if (counts.get (w) == 3 && ! field.contains (w)) toSet.add (w);
        }
        for (LongPoint5 w : toSet) {
            set (w);
        }
        for (LongPoint5 w : toReset) {
            reset (w);
        }
    }
}
