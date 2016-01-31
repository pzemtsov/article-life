import static util.LongUtil.DX;
import static util.LongUtil.DY;
import static util.LongUtil.fromPoint;

import java.util.HashSet;
import java.util.Set;

import util.Point;


final class Hash_HomeMade extends Worker
{
    public static final int HASH_CAPACITY = 8192;

    private final Field field;
    private final String name;
    private Cell [] toReset = new Cell [128];
    private Cell [] toSet = new Cell [128];
    private int resetPtr = 0;
    private int setPtr = 0;
    
    public Hash_HomeMade (Hasher hasher)
    {
        this.field = new Field (HASH_CAPACITY, hasher);
        this.name = getClass().getName () + ":" + hasher.getClass ().getName ();
    }

    @Override
    public String getName ()
    {
        return name;
    }

    @Override
    public void reset ()
    {
        field.clear ();
    }
    
    @Override
    public Set<Point> get ()
    {
        final HashSet<Point> result = new HashSet<Point> ();
        field.iterate (new Field.Action () {
            @Override
            public void perform (Cell cell)
            {
                if (cell.live) {
                    result.add (cell.toPoint ());
                }
            }
        });
        return result;
    }
    
    private void inc (long w)
    {
        Cell c = field.get (w);
        if (c == null) {
            field.put (new Cell (w, 1));
        } else {
            c.inc ();
        }
    }

    private void dec (long w)
    {
        Cell c = field.get (w);
        if (! c.dec () && ! c.live) {
            field.remove (c);
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
            field.remove (c);
        } else {
            c.reset ();
        }
    }
    
    @Override
    public void put (int x, int y)
    {
        long w = fromPoint (x, y);
        Cell c = field.get (w);
        if (c == null) {
            field.put (c = new Cell (w, 0, true));
        }
        set (c);
    }
    
    @Override
    public void step ()
    {
        if (field.size () > toSet.length) {
            toReset = new Cell [field.size () * 2];
            toSet = new Cell [field.size () * 2];
        }
        setPtr = 0;
        resetPtr = 0;
        
        field.iterate (new Field.Action() {
            @Override
            public void perform (Cell cell)
            {
                if (cell.live) {
                    if (cell.neighbours < 2 || cell.neighbours > 3) toReset[resetPtr ++] = cell;
                } else {
                    if (cell.neighbours == 3) toSet[setPtr ++] = cell;
                }
            }
        });
        for (int i = 0; i < setPtr; i++) {
            set (toSet[i]);
        }
        for (int i = 0; i < resetPtr; i++) {
            reset (toReset[i]);
        }
    }
}
