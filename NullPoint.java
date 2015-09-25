final class NullPoint extends LongUtil
{
    final long v;
    
    public NullPoint (long v)
    {
        this.v = v;
    }

    public NullPoint (int x, int y)
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
        return ((NullPoint) v2).v == v;
    }

    @Override
    public int hashCode ()
    {
        return 0;
    }
    
    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
