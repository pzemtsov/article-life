
final class LongPoint4 extends LongUtil
{
    final long v;
    
    public LongPoint4 (long v)
    {
        this.v = v;
    }

    public LongPoint4 (int x, int y)
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
        return ((LongPoint4) v2).v == v;
    }
    
    @Override
    public int hashCode ()
    {
        return hi(v) * 1735499 + lo(v) * 7436369;
    }
    
    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
