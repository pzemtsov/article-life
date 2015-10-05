import static util.LongUtil.*;

final class LongPoint3 extends LongPoint
{
    public static class Factory extends LongPointFactory
    {
        @Override
        public LongPoint3 create (long v)
        {
            return new LongPoint3 (v);
        }
    }
    
    public LongPoint3 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return hi(v) * 11 + lo(v) * 17;
    }
}
