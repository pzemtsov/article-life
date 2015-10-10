
final class LongPoint6 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint6 create (long v)
        {
            return new LongPoint6 (v);
        }
    };

    private LongPoint6 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return (int) (v % 946840871);
    }
}
