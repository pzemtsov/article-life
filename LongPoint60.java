import static util.LongUtil.*;

import java.util.HashMap;

final class LongPoint60 extends LongPoint
{
    public static class Factory extends LongPointFactory
    {
        @Override
        public LongPoint create (long v)
        {
            return new LongPoint60 (v);
        }
    }

    public LongPoint60 (long v)
    {
        super (v);
    }

    @Override
    public void inc (HashMap<LongPoint, Integer> counts)
    {
        inc (counts, new LongPoint60 (v-DX-DY));
        inc (counts, new LongPoint60 (v-DX));
        inc (counts, new LongPoint60 (v-DX+DY));
        inc (counts, new LongPoint60 (v-DY));
        inc (counts, new LongPoint60 (v+DY));
        inc (counts, new LongPoint60 (v+DX-DY));
        inc (counts, new LongPoint60 (v+DX));
        inc (counts, new LongPoint60 (v+DX+DY));
    }

    @Override
    public void dec (HashMap<LongPoint, Integer> counts)
    {
        dec (counts, new LongPoint60 (v-DX-DY));
        dec (counts, new LongPoint60 (v-DX));
        dec (counts, new LongPoint60 (v-DX+DY));
        dec (counts, new LongPoint60 (v-DY));
        dec (counts, new LongPoint60 (v+DY));
        dec (counts, new LongPoint60 (v+DX-DY));
        dec (counts, new LongPoint60 (v+DX));
        dec (counts, new LongPoint60 (v+DX+DY));
    }

    static long mult_unsigned_hipart (long x, long y)
    {
        long A = uhi (x);
        long B = ulo (x);
        long C = uhi (y);
        long D = ulo (y);

        long AC = A * C;
        long AD = A * D;
        long BC = B * C;
        long BD = B * D;

        long ADl_BCl_BDh = ulo (AD) + ulo (BC) + uhi (BD);
        return AC + uhi (AD) + uhi (BC) + uhi (ADl_BCl_BDh);
    }

    @Override
    public int hashCode ()
    {
        long div = mult_unsigned_hipart (v, 2614885092524444427L) >> 27;
        return (int) (v - div * 946840871);
    }
}
