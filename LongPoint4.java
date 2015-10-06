import static util.LongUtil.*;

import java.util.HashMap;

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
    public void inc (HashMap<LongPoint, Integer> counts)
    {
        inc (counts, new LongPoint4 (v-DX-DY));
        inc (counts, new LongPoint4 (v-DX));
        inc (counts, new LongPoint4 (v-DX+DY));
        inc (counts, new LongPoint4 (v-DY));
        inc (counts, new LongPoint4 (v+DY));
        inc (counts, new LongPoint4 (v+DX-DY));
        inc (counts, new LongPoint4 (v+DX));
        inc (counts, new LongPoint4 (v+DX+DY));
    }

    @Override
    public void dec (HashMap<LongPoint, Integer> counts)
    {
        dec (counts, new LongPoint4 (v-DX-DY));
        dec (counts, new LongPoint4 (v-DX));
        dec (counts, new LongPoint4 (v-DX+DY));
        dec (counts, new LongPoint4 (v-DY));
        dec (counts, new LongPoint4 (v+DY));
        dec (counts, new LongPoint4 (v+DX-DY));
        dec (counts, new LongPoint4 (v+DX));
        dec (counts, new LongPoint4 (v+DX+DY));
    }

    @Override
    public int hashCode ()
    {
        return hi(v) * 1735499 + lo(v) * 7436369;
    }
}
