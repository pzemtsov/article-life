import static util.LongUtil.*;

final class LongPoint61 extends LongPoint
{
    public static class Factory extends LongPoint.Factory
    {
        @Override
        public LongPoint61 create (long v)
        {
            return new LongPoint61 (v);
        }
    }

    private LongPoint61 (long v)
    {
        super (v);
    }
    
    static long mult_signed_hipart (long x, long y)
    {
        long A = hi (x);
        long B = ulo (x);
        long C = hi (y);
        long D = ulo (y);
                   
        long AC = A * C;
        long AD = A * D;
        long BC = B * C;
        long BD = B * D;
        
        long ADl_BCl_BDh = ulo (AD) + ulo (BC) + uhi (BD);
        return AC + hi (AD) + hi (BC) + uhi (ADl_BCl_BDh);
    }

    @Override
    public int hashCode ()
    {
        long sign = v >> 63;
        long div = (mult_signed_hipart (v, 2614885092524444427L) >> 27) - sign;
        return (int) (v - div * 946840871);
    }
}
