import static util.LongUtil.*;

final class LongPoint62 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint62 create (long v)
        {
            return new LongPoint62 (v);
        }
    };
    
    private LongPoint62 (long v)
    {
        super (v);
    }

    static long mult_unsigned_hipart_special (long x, long y)
    {
        long A = uhi (x);
        long B = ulo (x);
        long C = uhi (y);
        long D = ulo (y);
                   
        return A*C + uhi (A*D + B*C + uhi (B*D));
    }
    
    @Override
    public int hashCode ()
    {
        long div = mult_unsigned_hipart_special (v, 2614885092524444427L) >>> 27;
        return (int) (v - div * 946840871);
    }
}
