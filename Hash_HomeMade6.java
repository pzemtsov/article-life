import static util.LongUtil.DX;
import static util.LongUtil.DY;
import static util.LongUtil.fromPoint;

import java.util.HashSet;
import java.util.Set;

import util.Point;

final class Hash_HomeMade6 extends Worker
{
    public static final int HASH_CAPACITY = 256*1024;

    private ActionCell[] table;
    ActionCell full_list;
    
    private final String name;
    
    public Hash_HomeMade6 ()
    {
        this.name = getClass().getName ();
        this.table = new ActionCell [HASH_CAPACITY];
        full_list = new ActionCell (0, 0);
        full_list.prev = full_list.next = full_list;
    }

    @Override
    public String getName ()
    {
        return name;
    }

    @Override
    public void reset ()
    {
        table = new ActionCell [table.length];
        full_list.prev = full_list.next = full_list;
    }

    private int hash (long key)
    {
        return (int) (key % 946840871);
    }
    
    private int index (int hash)
    {
        return hash & (table.length - 1);
    }
    
    public ActionCell get (long key)
    {
        for (ActionCell c = table [index (hash (key))]; c != null; c = c.table_next) {
            if (c.position == key) {
                return c;
            }
        }
        return null;
    }
    
    private void add_to_list (ActionCell cell)
    {
        cell.next = full_list.next;
        cell.next.prev = cell;
        cell.prev = full_list;
        full_list.next = cell;
    }

    private void remove_from_list (ActionCell cell)
    {
        cell.next.prev = cell.prev;
        cell.prev.next = cell.next;
    }

    public void put (ActionCell cell)
    {
        int index = cell.index = index (hash (cell.position));
        cell.table_next = table [index];
        table [index] = cell;
        add_to_list (cell);
    }
    
    public void remove (ActionCell cell)
    {
        int index = cell.index;
        if (table [index] == cell) {
            table [index] = cell.table_next;
            remove_from_list (cell);
            return;
        }
        for (ActionCell c = table [index]; c != null; c = c.table_next) {
            if (c.table_next == cell) {
                c.table_next = cell.table_next;
                remove_from_list (cell);
                return;
            }
        }
    }
    
    @Override
    public Set<Point> get ()
    {
        final HashSet<Point> result = new HashSet<Point> ();
        for (ActionCell cell = full_list.next; cell != full_list; cell = cell.next) {
            if (cell.live) {
                result.add (cell.toPoint ());
            }
        }
        return result;
    }
    
    private void inc (long w)
    {
        ActionCell c = get (w);
        if (c == null) {
            put (new ActionCell (w, 1));
        } else {
            c.inc ();
        }
    }

    private void dec (long w)
    {
        ActionCell c = get (w);
        if (! c.dec () && ! c.live) {
            remove (c);
        }
    }
    
    void set (ActionCell c)
    {
        long w = c.position;
        inc (w-DX-DY);
        inc (w-DX);
        inc (w-DX+DY);
        inc (w-DY);
        inc (w+DY);
        inc (w+DX-DY);
        inc (w+DX);
        inc (w+DX+DY);
        c.set ();
    }
    
    void reset (ActionCell c)
    {
        long w = c.position;
        dec (w-DX-DY);
        dec (w-DX);
        dec (w-DX+DY);
        dec (w-DY);
        dec (w+DY);
        dec (w+DX-DY);
        dec (w+DX);
        dec (w+DX+DY);
        if (c.neighbours == 0) {
            remove (c);
        } else {
            c.reset ();
        }
    }
    
    @Override
    public void put (int x, int y)
    {
        long w = fromPoint (x, y);
        ActionCell c = get (w);
        if (c == null) {
            put (c = new ActionCell (w, 0, true));
        }
        set (c);
    }

    @Override
    public void step ()
    {
        ActionCell toSet = null;
        ActionCell toReset = null;
    
        for (ActionCell cell = full_list.next; cell != full_list; cell = cell.next) {
            if (cell.live) {
                if (cell.neighbours < 2 || cell.neighbours > 3) {
                    cell.next_action = toReset;
                    toReset = cell;
                }
            } else {
                if (cell.neighbours == 3) {
                    cell.next_action = toSet;
                    toSet = cell;
                }
            }
        }
        
        ActionCell next_action;
        for (ActionCell c = toSet; c != null; c = next_action) {
            set (c);
            next_action = c.next_action;
            c.next_action = null;
        }
        for (ActionCell c = toReset; c != null; c = next_action) {
            reset (c);
            next_action = c.next_action;
            c.next_action = null;
        }
    }
}
