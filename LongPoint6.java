import static util.LongUtil.DX;
import static util.LongUtil.DY;


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
    public LongPoint[] neighbours ()
    {
        return new LongPoint[] {
                            new LongPoint6 (v-DX-DY),
                            new LongPoint6 (v-DX),
                            new LongPoint6 (v-DX+DY),
                            new LongPoint6 (v-DY),
                            new LongPoint6 (v+DY),
                            new LongPoint6 (v+DX-DY),
                            new LongPoint6 (v+DX),
                            new LongPoint6 (v+DX+DY)
        };
    }

    @Override
    public int hashCode ()
    {
        return (int) (v % 946840871);
    }
}
