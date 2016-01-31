
public final class Field
{
    public static abstract class Action
    {
        public abstract void perform (Cell cell);
    }
    
    private final Cell[] table;
    private final Hasher hasher;
    private int count = 0;
    
    public Field (int capacity, Hasher hasher)
    {
        table = new Cell [capacity];
        this.hasher = hasher;
    }
    
    public void clear ()
    {
        for (int i = 0; i < table.length; i++) {
            table [i] = null;
        }
    }
    
    private int hash (long key)
    {
        return hasher.hashCode (key);
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
    
    public void iterate (Action action)
    {
        for (Cell cell : table) {
            for (Cell c = cell; c != null; c = c.table_next) {
                action.perform (c);
            }
        }
    }
    
    public int size ()
    {
        return count;
    }
}
