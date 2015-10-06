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
    public LongPoint[] neighbours ()
    {
        return new LongPoint[] {
                            new LongPoint4 (v-DX-DY),
                            new LongPoint4 (v-DX),
                            new LongPoint4 (v-DX+DY),
                            new LongPoint4 (v-DY),
                            new LongPoint4 (v+DY),
                            new LongPoint4 (v+DX-DY),
                            new LongPoint4 (v+DX),
                            new LongPoint4 (v+DX+DY)
        };
    }

    @Override
    public int hashCode ()
    {
        return hi(v) * 1735499 + lo(v) * 7436369;
    }
}
