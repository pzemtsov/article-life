import static util.LongUtil.*;

final class LongPoint5 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint5 create (long v)
        {
            return new LongPoint5 (v);
        }
    };
    
    private LongPoint5 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        long x = v * 541725397157L;
        return lo(x) ^ hi(x);
    }
}
