public final class Count
{
    public int value;
    
    public Count (int value)
    {
        this.value = value;
    }
    
    public void inc ()
    {
        ++ value;
    }
    
    public boolean dec ()
    {
        return --value != 0;
    }
}
