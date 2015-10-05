import static util.LongUtil.*;

final class LongPoint4 extends LongPoint
{
    public static class Factory extends LongPointFactory
    {
        @Override
        public LongPoint create (long v)
        {
            return new LongPoint4 (v);
        }
    }

    public LongPoint4 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return hi(v) * 1735499 + lo(v) * 7436369;
    }
}
