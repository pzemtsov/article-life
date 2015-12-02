public final class Value
{
    public int count;
    public boolean live;
    
    public Value (int value, boolean present)
    {
        this.count = value;
        this.live = present;
    }

    public Value (int value)
    {
        this (value, false);
    }
    
    public void inc ()
    {
        ++ count;
    }
    
    public boolean dec ()
    {
        return --count != 0;
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
