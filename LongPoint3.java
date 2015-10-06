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
    public LongPoint[] neighbours ()
    {
        return new LongPoint[] {
                            new LongPoint3 (v-DX-DY),
                            new LongPoint3 (v-DX),
                            new LongPoint3 (v-DX+DY),
                            new LongPoint3 (v-DY),
                            new LongPoint3 (v+DY),
                            new LongPoint3 (v+DX-DY),
                            new LongPoint3 (v+DX),
                            new LongPoint3 (v+DX+DY)
        };
    }

    @Override
    public int hashCode ()
    {
        return hi(v) * 11 + lo(v) * 17;
    }
}
