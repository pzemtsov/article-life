import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;


final class Hash_Reference implements Worker
{
    public static final int HASH_SIZE = 8192;

    private HashSet<Point> field = new HashSet<Point> (HASH_SIZE);
    private HashMap<Point, Integer> counts = new HashMap<Point, Integer> (HASH_SIZE);

    @Override
    public void put (int x, int y)
    {
        set (new Point (x, y));
    }

    @Override
    public Set<Point> get ()
    {
        return field;
    }
    
    private void inc (Point w)
    {
        Integer c = counts.get (w);
        counts.put (w, c == null ? 1 : c + 1);
    }

    private void dec (Point w)
    {
        int c = counts.get (w) - 1;
        if (c != 0) {
            counts.put (w, c);
        } else {
            counts.remove (w);
        }
    }
    
    void set (Point w)
    {
        for (Point p : w.neighbours ()) {
            inc (p);
        }
        field.add (w);
    }
    
    void reset (Point w)
    {
        for (Point p : w.neighbours ()) {
            dec (p);
        }
        field.remove (w);
    }
    
    @Override
    public void step ()
    {
        ArrayList<Point> toReset = new ArrayList<Point> ();
        ArrayList<Point> toSet = new ArrayList<Point> ();
        for (Point w : field) {
            Integer c = counts.get (w);
            if (c == null || c < 2 || c > 3) toReset.add (w);
        }
        for (Point w : counts.keySet ()) {
            if (counts.get (w) == 3 && ! field.contains (w)) toSet.add (w);
        }
        for (Point w : toSet) {
            set (w);
        }
        for (Point w : toReset) {
            reset (w);
        }
    }
}
