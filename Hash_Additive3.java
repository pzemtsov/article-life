import static util.LongUtil.hi;
import static util.LongUtil.lo;
import static util.LongUtil.w;

import java.util.HashSet;
import java.util.Set;

import util.Point;

final class Hash_Additive3 extends Worker
{
    public static final int HASH_CAPACITY = 256*1024;

    private AdditiveCell[] table;
    AdditiveCell full_list;
    public static long MASK = AdditiveCell.MASK;
    public static long A = w (AdditiveCell.A, 0);
    public static long B = AdditiveCell.B;
    public static long AM = w (-AdditiveCell.A, 0) & MASK;
    public static long BM = w (0, -AdditiveCell.B) & MASK;
    
    private final String name;
    
    public Hash_Additive3 ()
    {
        this.name = getClass().getName ();
        this.table = new AdditiveCell [HASH_CAPACITY];
        full_list = new AdditiveCell (0, 0);
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
        table = new AdditiveCell [table.length];
        full_list.prev = full_list.next = full_list;
    }

    private int hash (long key)
    {
        return hi(key) + lo(key);
    }
    
    private int index (int hash)
    {
        return hash & (HASH_CAPACITY - 1);
    }
    
    public AdditiveCell get (long key)
    {
        for (AdditiveCell c = table [index (hash (key))]; c != null; c = c.table_next) {
            if (c.pos == key) {
                return c;
            }
        }
        return null;
    }

    private void add_to_list (AdditiveCell cell)
    {
        cell.next = full_list.next;
        cell.next.prev = cell;
        cell.prev = full_list;
        full_list.next = cell;
    }

    private void remove_from_list (AdditiveCell cell)
    {
        cell.next.prev = cell.prev;
        cell.prev.next = cell.next;
    }

    public void put (AdditiveCell cell)
    {
        int index = index (hash(cell.pos));
        cell.table_next = table [index];
        table [index] = cell;
        add_to_list (cell);
    }
    
    public void remove (AdditiveCell cell)
    {
        int index = index (hash (cell.pos));
        if (table [index] == cell) {
            table [index] = cell.table_next;
            remove_from_list (cell);
            return;
        }
        for (AdditiveCell c = table [index]; c != null; c = c.table_next) {
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
        for (AdditiveCell cell = full_list.next; cell != full_list; cell = cell.next) {
            if (cell.live) {
                result.add (cell.toPoint ());
            }
        }
        return result;
    }
    
    private void inc (long w)
    {
        w &= MASK;
        AdditiveCell c = get (w);
        if (c == null) {
            put (new AdditiveCell (w, 1));
        } else {
            c.inc ();
        }
    }

    private void dec (long w)
    {
        w &= MASK;
        AdditiveCell c = get (w);
        if (! c.dec () && ! c.live) {
            remove (c);
        }
    }
    
    void set (AdditiveCell c)
    {
        long w = c.pos;
        inc (w+AM+BM);
        inc (w+AM);
        inc (w+AM+B);
        inc (w+BM);
        inc (w+B);
        inc (w+A+BM);
        inc (w+A);
        inc (w+A+B);
        c.set ();
    }
    
    void reset (AdditiveCell c)
    {
        long w = c.pos;
        dec (w+AM+BM);
        dec (w+AM);
        dec (w+AM+B);
        dec (w+BM);
        dec (w+B);
        dec (w+A+BM);
        dec (w+A);
        dec (w+A+B);
        if (c.neighbours == 0) {
            remove (c);
        } else {
            c.reset ();
        }
    }
    
    @Override
    public void put (int x, int y)
    {
        long w = AdditiveCell.encode (x, y);
        AdditiveCell c = get (w);
        if (c == null) {
            put (c = new AdditiveCell (w, 0, true));
        }
        set (c);
    }

    @Override
    public void step ()
    {
        AdditiveCell toSet = null;
        AdditiveCell toReset = null;

        for (AdditiveCell cell = full_list.next; cell != full_list; cell = cell.next) {
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
        
        AdditiveCell next_action;
        for (AdditiveCell c = toSet; c != null; c = next_action) {
            set (c);
            next_action = c.next_action;
            c.next_action = null;
        }
        for (AdditiveCell c = toReset; c != null; c = next_action) {
            reset (c);
            next_action = c.next_action;
            c.next_action = null;
        }
    }
}
