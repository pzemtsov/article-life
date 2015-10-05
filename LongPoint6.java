
final class LongPoint6 extends LongPoint
{
    public static class Factory extends LongPointFactory
    {
        @Override
        public LongPoint create (long v)
        {
            return new LongPoint6 (v);
        }
    }

    public LongPoint6 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return (int) (v % 946840871);
    }
}
