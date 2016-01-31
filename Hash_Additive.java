import static util.LongUtil.DX;
import static util.LongUtil.DY;
import static util.LongUtil.fromPoint;

import java.util.HashSet;
import java.util.Set;

import util.Point;

final class Hash_Additive extends Worker
{
    public static final int HASH_CAPACITY = 256*1024;
    public static final int BASE = 946840871;
    public static final int A = (int) (0x100000000L % 946840871);
    public static final int B = 1;

    private HashCell[] table;
    HashCell full_list;
    
    private final String name;
    
    public Hash_Additive ()
    {
        this.name = getClass().getName ();
        this.table = new HashCell [HASH_CAPACITY];
        full_list = new HashCell (0, 0, 0);
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
        table = new HashCell [table.length];
        full_list.prev = full_list.next = full_list;
    }

    private int hash (long key)
    {
        return (int) (key % BASE);
    }

    private int add_hash (int hash, int v)
    {
        hash += v;
        if (hash > BASE) hash -= BASE;
        return hash;
    }
    
    private int sub_hash (int hash, int v)
    {
        hash -= v;
        if (hash < 0) hash += BASE;
        return hash;
    }
    
    private int index (int hash)
    {
        return hash & (HASH_CAPACITY - 1);
    }
    
    public HashCell get (long key, int hash)
    {
        for (HashCell c = table [index (hash)]; c != null; c = c.table_next) {
            if (c.position == key) {
                return c;
            }
        }
        return null;
    }

    public HashCell get (long key)
    {
        return get (key, hash (key));
    }
    
    private void add_to_list (HashCell cell)
    {
        cell.next = full_list.next;
        cell.next.prev = cell;
        cell.prev = full_list;
        full_list.next = cell;
    }

    private void remove_from_list (HashCell cell)
    {
        cell.next.prev = cell.prev;
        cell.prev.next = cell.next;
    }

    public void put (HashCell cell)
    {
        int index = index (cell.hash);
        cell.table_next = table [index];
        table [index] = cell;
        add_to_list (cell);
    }

    public void remove (HashCell cell)
    {
        int index = index (cell.hash);
        if (table [index] == cell) {
            table [index] = cell.table_next;
            remove_from_list (cell);
            return;
        }
        for (HashCell c = table [index]; c != null; c = c.table_next) {
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
        for (HashCell cell = full_list.next; cell != full_list; cell = cell.next) {
            if (cell.live) {
                result.add (cell.toPoint ());
            }
        }
        return result;
    }

    @Override
    public int size ()
    {
        int size = 0;
        for (HashCell cell = full_list.next; cell != full_list; cell = cell.next) {
            if (cell.live) {
                ++ size;
            }
        }
        return size;
    }
    
    private void inc (long w, int hash)
    {
        HashCell c = get (w, hash);
        if (c == null) {
            put (new HashCell (w, hash, 1));
        } else {
            c.inc ();
        }
    }

    private void dec (long w, int hash)
    {
        HashCell c = get (w, hash);
        if (! c.dec () && ! c.live) {
            remove (c);
        }
    }
    
    void set (HashCell c)
    {
        long w = c.position;
        int h = c.hash;
        inc (w-DX-DY, sub_hash (h, A+B));
        inc (w-DX,    sub_hash (h, A));
        inc (w-DX+DY, sub_hash (h, A-B));
        inc (w-DY,    sub_hash (h, B));
        inc (w+DY,    add_hash (h, B));
        inc (w+DX-DY, add_hash (h, A-B));
        inc (w+DX,    add_hash (h, A));
        inc (w+DX+DY, add_hash (h, A+B));
        c.set ();
    }
    
    void reset (HashCell c)
    {
        long w = c.position;
        int h = c.hash;
        dec (w-DX-DY, sub_hash (h, A+B));
        dec (w-DX,    sub_hash (h, A));
        dec (w-DX+DY, sub_hash (h, A-B));
        dec (w-DY,    sub_hash (h, B));
        dec (w+DY,    add_hash (h, B));
        dec (w+DX-DY, add_hash (h, A-B));
        dec (w+DX,    add_hash (h, A));
        dec (w+DX+DY, add_hash (h, A+B));
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
        HashCell c = get (w);
        if (c == null) {
            put (c = new HashCell (w, hash (w), 0, true));
        }
        set (c);
    }

    @Override
    public void step ()
    {
        HashCell toSet = null;
        HashCell toReset = null;

        for (HashCell cell = full_list.next; cell != full_list; cell = cell.next) {
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
        
        HashCell next_action;
        for (HashCell c = toSet; c != null; c = next_action) {
            set (c);
            next_action = c.next_action;
            c.next_action = null;
        }
        for (HashCell c = toReset; c != null; c = next_action) {
            reset (c);
            next_action = c.next_action;
            c.next_action = null;
        }
    }
}
