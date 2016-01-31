import static util.LongUtil.DX;
import static util.LongUtil.DY;
import static util.LongUtil.fromPoint;

import java.util.HashSet;
import java.util.Set;

import util.Point;

final class Hash_HomeMade3 extends Worker
{
    public static final int HASH_CAPACITY = 8192;

    private final Hasher hasher;
    private final ListedCell[] table;
    private int count = 0;
    ListedCell full_list;
    
    private final String name;
    private ListedCell [] toReset = new ListedCell [128];
    private ListedCell [] toSet = new ListedCell [128];
    
    public Hash_HomeMade3 (Hasher hash)
    {
        this.hasher = hash;
        this.name = getClass().getName () + ":" + hash.getClass ().getName ();
        this.table = new ListedCell [HASH_CAPACITY];
        full_list = new ListedCell (0, 0);
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
        for (int i = 0; i < table.length; i++) {
            table [i] = null;
        }
        full_list.prev = full_list.next = full_list;
    }

    private int hash (long key)
    {
        return hasher.hashCode (key);
    }
    
    private int index (int hash)
    {
        return hash & (table.length - 1);
    }
    
    public ListedCell get (long key)
    {
        for (ListedCell c = table [index (hash (key))]; c != null; c = c.table_next) {
            if (c.position == key) {
                return c;
            }
        }
        return null;
    }
    
    private void add_to_list (ListedCell cell)
    {
        cell.next = full_list.next;
        cell.next.prev = cell;
        cell.prev = full_list;
        full_list.next = cell;
    }

    private void remove_from_list (ListedCell cell)
    {
        cell.next.prev = cell.prev;
        cell.prev.next = cell.next;
    }

    public void put (ListedCell cell)
    {
        int index = cell.index = index (hash (cell.position));
        cell.table_next = table [index];
        table [index] = cell;
        add_to_list (cell);
        ++ count;
    }
    
    public void remove (ListedCell cell)
    {
        int index = cell.index;
        if (table [index] == cell) {
            table [index] = cell.table_next;
            -- count;
            remove_from_list (cell);
            return;
        }
        for (ListedCell c = table [index]; c != null; c = c.table_next) {
            if (c.table_next == cell) {
                c.table_next = cell.table_next;
                -- count;
                remove_from_list (cell);
                return;
            }
        }
    }
    
    @Override
    public int size ()
    {
        return count;
    }
    
    @Override
    public Set<Point> get ()
    {
        final HashSet<Point> result = new HashSet<Point> ();
        for (ListedCell cell = full_list.next; cell != full_list; cell = cell.next) {
            if (cell.live) {
                result.add (cell.toPoint ());
            }
        }
        return result;
    }
    
    private void inc (long w)
    {
        ListedCell c = get (w);
        if (c == null) {
            put (new ListedCell (w, 1));
        } else {
            c.inc ();
        }
    }

    private void dec (long w)
    {
        ListedCell c = get (w);
        if (! c.dec () && ! c.live) {
            remove (c);
        }
    }
    
    void set (ListedCell c)
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
    
    void reset (ListedCell c)
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
        ListedCell c = get (w);
        if (c == null) {
            put (c = new ListedCell (w, 0, true));
        }
        set (c);
    }

    @Override
    public void step ()
    {
        if (size () > toSet.length) {
            toReset = new ListedCell [size () * 2];
            toSet = new ListedCell [size () * 2];
        }
        int setPtr = 0;
        int resetPtr = 0;

        for (ListedCell cell = full_list.next; cell != full_list; cell = cell.next) {
            if (cell.live) {
                if (cell.neighbours < 2 || cell.neighbours > 3) toReset[resetPtr ++] = cell;
            } else {
                if (cell.neighbours == 3) toSet[setPtr ++] = cell;
            }
        }
        
        for (int i = 0; i < setPtr; i++) {
            set (toSet[i]);
        }
        for (int i = 0; i < resetPtr; i++) {
            reset (toReset[i]);
        }
    }
}
