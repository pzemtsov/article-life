import static util.LongUtil.hi;
import static util.LongUtil.lo;
import static util.LongUtil.w;
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
    public static long MASK = 0x7FFFFFFF7FFFFFFFL;
    
    public static long encode (int x, int y)
    {
        return w (x * A, y * B) & MASK;
    }
    
    public static Point decode (long hash)
    {
        int x = (hi (hash) * Ar) << 1 >> 1;
        int y = (lo (hash) * Br) << 1 >> 1;
        return new Point (x, y);
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
        this (encode (x, y), 0, true);
    }
    
    public Point toPoint ()
    {
        return decode (pos);
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
