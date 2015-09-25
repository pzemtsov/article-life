
final class LongPoint3 extends LongUtil
{
    final long v;
    
    public LongPoint3 (long v)
    {
        this.v = v;
    }

    public LongPoint3 (int x, int y)
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
        return ((LongPoint3) v2).v == v;
    }
    
    @Override
    public int hashCode ()
    {
        return hi(v) * 11 + lo(v) * 17;
    }
    
    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
