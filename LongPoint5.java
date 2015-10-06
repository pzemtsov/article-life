import static util.LongUtil.*;

import java.util.HashMap;

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
    public void inc (HashMap<LongPoint, Integer> counts)
    {
        inc (counts, new LongPoint5 (v-DX-DY));
        inc (counts, new LongPoint5 (v-DX));
        inc (counts, new LongPoint5 (v-DX+DY));
        inc (counts, new LongPoint5 (v-DY));
        inc (counts, new LongPoint5 (v+DY));
        inc (counts, new LongPoint5 (v+DX-DY));
        inc (counts, new LongPoint5 (v+DX));
        inc (counts, new LongPoint5 (v+DX+DY));
    }

    @Override
    public void dec (HashMap<LongPoint, Integer> counts)
    {
        dec (counts, new LongPoint5 (v-DX-DY));
        dec (counts, new LongPoint5 (v-DX));
        dec (counts, new LongPoint5 (v-DX+DY));
        dec (counts, new LongPoint5 (v-DY));
        dec (counts, new LongPoint5 (v+DY));
        dec (counts, new LongPoint5 (v+DX-DY));
        dec (counts, new LongPoint5 (v+DX));
        dec (counts, new LongPoint5 (v+DX+DY));
    }

    @Override
    public int hashCode ()
    {
        long x = v * 541725397157L;
        return lo(x) ^ hi(x);
    }
}
