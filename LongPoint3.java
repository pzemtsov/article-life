import static util.LongUtil.*;

import java.util.HashMap;

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
    public void inc (HashMap<LongPoint, Integer> counts)
    {
        inc (counts, new LongPoint3 (v-DX-DY));
        inc (counts, new LongPoint3 (v-DX));
        inc (counts, new LongPoint3 (v-DX+DY));
        inc (counts, new LongPoint3 (v-DY));
        inc (counts, new LongPoint3 (v+DY));
        inc (counts, new LongPoint3 (v+DX-DY));
        inc (counts, new LongPoint3 (v+DX));
        inc (counts, new LongPoint3 (v+DX+DY));
    }

    @Override
    public void dec (HashMap<LongPoint, Integer> counts)
    {
        dec (counts, new LongPoint3 (v-DX-DY));
        dec (counts, new LongPoint3 (v-DX));
        dec (counts, new LongPoint3 (v-DX+DY));
        dec (counts, new LongPoint3 (v-DY));
        dec (counts, new LongPoint3 (v+DY));
        dec (counts, new LongPoint3 (v+DX-DY));
        dec (counts, new LongPoint3 (v+DX));
        dec (counts, new LongPoint3 (v+DX+DY));
    }

    @Override
    public int hashCode ()
    {
        return hi(v) * 11 + lo(v) * 17;
    }
}
