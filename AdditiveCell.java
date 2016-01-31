import static util.LongUtil.fromPoint;
import static util.LongUtil.hi;
import static util.LongUtil.lo;
import static util.LongUtil.w;
import util.LongUtil;
import util.Point;


public final class AdditiveCell
{
    final long pos;
    int neighbours;
    boolean live;
    AdditiveCell table_next;
    AdditiveCell next;
    AdditiveCell prev;
    AdditiveCell next_action;

    public static final int A = 1735499;
    public static final int B = 7436369;
    public static int Ar = 1651619427;
    public static int Br = 2058014897;

    private static long tohash (long key)
    {
        return w (hi (key) * A, lo (key) * B);
    }
    
    private static long fromhash (long hash)
    {
        return w (hi (hash) * Ar, lo(hash) * Br);
    }
    
    public AdditiveCell (long pos, int neighbours, boolean live)
    {
        this.pos = pos;
        this.neighbours = neighbours;
        this.live = live;
    }

    public AdditiveCell (long pos, int neighbours)
    {
        this (pos, neighbours, false);
    }

    public AdditiveCell (int x, int y)
    {
        this (tohash (fromPoint (x, y)), 0, true);
    }
    
    public Point toPoint ()
    {
        return LongUtil.toPoint (fromhash (pos));
    }
    
    public void inc ()
    {
        ++ neighbours;
    }
    
    public boolean dec ()
    {
        return --neighbours != 0;
    }
    
    public void set ()
    {
        live = true;
    }

    public void reset ()
    {
        live = false;
    }
}
