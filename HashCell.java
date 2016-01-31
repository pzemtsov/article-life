import util.LongUtil;
import util.Point;


public final class HashCell
{
    final long position;
    final int hash;
    int neighbours;
    boolean live;
    HashCell table_next;
    HashCell next;
    HashCell prev;
    HashCell next_action;
    static int count = 0;
    int instance;
    
    public HashCell (long position, int hash, int neighbours, boolean live)
    {
        this.position = position;
        this.hash = hash;
        this.neighbours = neighbours;
        this.live = live;
        instance = ++ count;
    }

    public HashCell (long position, int hash, int neighbours)
    {
        this (position, hash, neighbours, false);
    }
    
    public Point toPoint ()
    {
        return LongUtil.toPoint (position);
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
