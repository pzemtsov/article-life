
final class LongPoint6 extends LongUtil
{
    final long v;
    
    public LongPoint6 (long v)
    {
        this.v = v;
    }

    public LongPoint6 (int x, int y)
    {
        this.v = fromPoint (x, y);
    }
    
    public Point toPoint ()
    {
        return toPoint (v);
    }
    
    @Override
    public boolean equals (Object v2)
    {
        return ((LongPoint6) v2).v == v;
    }
    
    @Override
    public int hashCode ()
    {
        return (int) (v % 946840871);
    }
    
    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
