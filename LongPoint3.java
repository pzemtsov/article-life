import static util.LongUtil.*;

final class LongPoint3 extends LongPoint
{
    public static class Factory extends LongPoint.Factory
    {
        @Override
        public LongPoint3 create (long v)
        {
            return new LongPoint3 (v);
        }
    }
    
    private LongPoint3 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return hi(v) * 11 + lo(v) * 17;
    }
}
