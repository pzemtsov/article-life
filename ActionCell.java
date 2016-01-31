import util.LongUtil;
import util.Point;


public final class ActionCell
{
    final long position;
    int index;
    int neighbours;
    boolean live;
    ActionCell table_next;
    ActionCell next;
    ActionCell prev;
    ActionCell next_action;
    
    public ActionCell (long position, int neighbours, boolean live)
    {
        this.position = position;
        this.neighbours = neighbours;
        this.live = live;
    }

    public ActionCell (long position, int neighbours)
    {
        this (position, neighbours, false);
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
