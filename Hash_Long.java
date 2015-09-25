import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

final class Hash_Long extends LongUtil implements Worker
{
    public static final int HASH_SIZE = 8192;
 
    private HashSet<Long> field = new HashSet<Long> (HASH_SIZE);
    private HashMap<Long, Integer> counts = new HashMap<Long, Integer> (HASH_SIZE);
    
    @Override
    public Set<Point> get ()
    {
        Set<Point> result = new HashSet<Point> ();
        for (Long w : field) {
            result.add (new Point (x(w), y(w)));
        }
        return result;
    }
    
    private void inc (long w)
    {
        Integer c = counts.get (w);
        counts.put (w, c == null ? 1 : c+1);
    }

    private void dec (long w)
    {
        int c = counts.get (w)-1;
        if (c != 0) {
            counts.put (w, c);
        } else {
            counts.remove (w);
        }
    }
    
    void set (long w)
    {
        inc (w-DX-DY);
        inc (w-DX);
        inc (w-DX+DY);
        inc (w-DY);
        inc (w+DY);
        inc (w+DX-DY);
        inc (w+DX);
        inc (w+DX+DY);
        field.add (w);
    }
    
    void reset (long w)
    {
        dec (w-DX-DY);
        dec (w-DX);
        dec (w-DX+DY);
        dec (w-DY);
        dec (w+DY);
        dec (w+DX-DY);
        dec (w+DX);
        dec (w+DX+DY);
        field.remove (w);
    }
    
    @Override
    public void put (int x, int y)
    {
        set (fromPoint (x, y));
    }
    
    @Override
    public void step ()
    {
        ArrayList<Long> toReset = new ArrayList<Long> ();
        ArrayList<Long> toSet = new ArrayList<Long> ();

        for (Long w : field) {
            Integer c = counts.get (w);
            if (c == null || c < 2 || c > 3) toReset.add (w);
        }
        for (Long w : counts.keySet ()) {
            if (counts.get (w) == 3 && ! field.contains (w)) toSet.add (w);
        }
        for (Long w : toSet) {
            set (w);
        }
        for (Long w : toReset) {
            reset (w);
        }
    }
}
