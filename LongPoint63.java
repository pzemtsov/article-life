import static util.LongUtil.*;

final class LongPoint63 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint63 create (long v)
        {
            return new LongPoint63 (v);
        }
    };
    
    private LongPoint63 (long v)
    {
        super (v);
    }

    static long mult_unsigned_hipart_special (long x, long y)
    {
        long A = uhi (x);
        long B = ulo (x);
        long C = uhi (y);
        long D = ulo (y);
        
        long AC = A * C;
        long BD = B * D;
        long AD_BC = (A+B) * (C+D) - (AC + BD);
        return AC + uhi (AD_BC + uhi (BD));
    }

    @Override
    public int hashCode ()
    {
        long div = mult_unsigned_hipart_special (v, 2614885092524444427L) >>> 27;
        return (int) (v - div * 946840871);
    }
}
