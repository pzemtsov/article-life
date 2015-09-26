
final class LongPoint60 extends LongUtil
{
    final long v;
    
    public LongPoint60 (long v)
    {
        this.v = v;
    }

    public LongPoint60 (int x, int y)
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
        return ((LongPoint60) v2).v == v;
    }

    static long mult_unsigned_hipart (long x, long y)
    {
        long A = uhi (x);
        long B = ulo (x);
        long C = uhi (y);
        long D = ulo (y);

        long AC = A * C;
        long AD = A * D;
        long BC = B * C;
        long BD = B * D;

        long ADl_BCl_BDh = ulo (AD) + ulo (BC) + uhi (BD);
        return AC + uhi (AD) + uhi (BC) + uhi (ADl_BCl_BDh);
    }

    @Override
    public int hashCode ()
    {
        long div = mult_unsigned_hipart (v, 2614885092524444427L) >> 27;
        int h = (int) (v - div * 946840871);

        int h0 = (int) (v % 946840871);
        
        if (h != h0) {
            System.out.println (this + ": " + h + " != " + h0);
        }
        return h;
    
    }

    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
