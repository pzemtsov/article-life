import static util.LongUtil.*;

final class LongPoint4 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint4 create (long v)
        {
            return new LongPoint4 (v);
        }
    };

    private LongPoint4 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return hi(v) * 1735499 + lo(v) * 7436369;
    }
}
