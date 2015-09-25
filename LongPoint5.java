
final class LongPoint5 extends LongUtil
{
    final long v;
    
    public LongPoint5 (long v)
    {
        this.v = v;
    }

    public LongPoint5 (int x, int y)
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
        return ((LongPoint5) v2).v == v;
    }
    
    @Override
    public int hashCode ()
    {
        long x = v * 541725397157L;
        return lo(x) ^ hi(x);
    }
    
    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
