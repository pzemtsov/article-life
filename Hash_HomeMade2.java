import static util.LongUtil.DX;
import static util.LongUtil.DY;
import static util.LongUtil.fromPoint;

import java.util.HashSet;
import java.util.Set;

import util.Point;

final class Hash_HomeMade2 extends Worker
{
    public static final int HASH_CAPACITY = 8192;

    private final Hasher hash;
    private final Cell[] table;
    private int count = 0;
    
    private final String name;
    private Cell [] toReset = new Cell [128];
    private Cell [] toSet = new Cell [128];
    
    public Hash_HomeMade2 (Hasher hash)
    {
        this.hash = hash;
        this.name = getClass().getName () + ":" + hash.getClass ().getName ();
        this.table = new Cell [HASH_CAPACITY];
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
    }

    private int hash (long key)
    {
        return hash.hashCode (key);
    }
    
    private int index (int hash)
    {
        return hash & (table.length - 1);
    }
    
    public Cell get (long key)
    {
        for (Cell c = table [index (hash (key))]; c != null; c = c.table_next) {
            if (c.position == key) {
                return c;
            }
        }
        return null;
    }

    public void put (Cell cell)
    {
        int index = cell.index = index (hash (cell.position));
        cell.table_next = table [index];
        table [index] = cell;
        ++ count;
    }
    
    public void remove (Cell cell)
    {
        int index = cell.index;
        if (table [index] == cell) {
            table [index] = cell.table_next;
            -- count;
            return;
        }
        for (Cell c = table [index]; c != null; c = c.table_next) {
            if (c.table_next == cell) {
                c.table_next = cell.table_next;
                -- count;
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
        for (Cell cell : table) {
            for (Cell c = cell; c != null; c = c.table_next) {
                if (c.live) {
                    result.add (c.toPoint ());
                }
            }
        }
        return result;
    }
    
    private void inc (long w)
    {
        Cell c = get (w);
        if (c == null) {
            put (new Cell (w, 1));
        } else {
            c.inc ();
        }
    }

    private void dec (long w)
    {
        Cell c = get (w);
        if (! c.dec () && ! c.live) {
            remove (c);
        }
    }
    
    void set (Cell c)
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
    
    void reset (Cell c)
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
        Cell c = get (w);
        if (c == null) {
            put (c = new Cell (w, 0, true));
        }
        set (c);
    }
    
    @Override
    public void step ()
    {
        if (size () > toSet.length) {
            toReset = new Cell [size () * 2];
            toSet = new Cell [size () * 2];
        }
        int setPtr = 0;
        int resetPtr = 0;

        for (Cell cell : table) {
            for (Cell c = cell; c != null; c = c.table_next) {
                if (c.live) {
                    if (c.neighbours < 2 || c.neighbours > 3) toReset[resetPtr ++] = c;
                } else {
                    if (c.neighbours == 3) toSet[setPtr ++] = c;
                }
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
