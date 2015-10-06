import static util.LongUtil.DX;
import static util.LongUtil.DY;

import java.util.HashMap;


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
    public void inc (HashMap<LongPoint, Integer> counts)
    {
        inc (counts, new LongPoint6 (v-DX-DY));
        inc (counts, new LongPoint6 (v-DX));
        inc (counts, new LongPoint6 (v-DX+DY));
        inc (counts, new LongPoint6 (v-DY));
        inc (counts, new LongPoint6 (v+DY));
        inc (counts, new LongPoint6 (v+DX-DY));
        inc (counts, new LongPoint6 (v+DX));
        inc (counts, new LongPoint6 (v+DX+DY));
    }

    @Override
    public void dec (HashMap<LongPoint, Integer> counts)
    {
        dec (counts, new LongPoint6 (v-DX-DY));
        dec (counts, new LongPoint6 (v-DX));
        dec (counts, new LongPoint6 (v-DX+DY));
        dec (counts, new LongPoint6 (v-DY));
        dec (counts, new LongPoint6 (v+DY));
        dec (counts, new LongPoint6 (v+DX-DY));
        dec (counts, new LongPoint6 (v+DX));
        dec (counts, new LongPoint6 (v+DX+DY));
    }

    @Override
    public int hashCode ()
    {
        return (int) (v % 946840871);
    }
}
