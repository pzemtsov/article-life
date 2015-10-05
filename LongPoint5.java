import static util.LongUtil.*;

final class LongPoint5 extends LongPoint
{
    public static class Factory extends LongPointFactory
    {
        @Override
        public LongPoint create (long v)
        {
            return new LongPoint5 (v);
        }
    }
    
    public LongPoint5 (long v)
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
