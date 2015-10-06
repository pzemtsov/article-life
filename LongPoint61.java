import static util.LongUtil.*;

import java.util.HashMap;

final class LongPoint61 extends LongPoint
{
    public static class Factory extends LongPointFactory
    {
        @Override
        public LongPoint create (long v)
        {
            return new LongPoint61 (v);
        }
    }

    public LongPoint61 (long v)
    {
        super (v);
    }
    
    @Override
    public void inc (HashMap<LongPoint, Integer> counts)
    {
        inc (counts, new LongPoint61 (v-DX-DY));
        inc (counts, new LongPoint61 (v-DX));
        inc (counts, new LongPoint61 (v-DX+DY));
        inc (counts, new LongPoint61 (v-DY));
        inc (counts, new LongPoint61 (v+DY));
        inc (counts, new LongPoint61 (v+DX-DY));
        inc (counts, new LongPoint61 (v+DX));
        inc (counts, new LongPoint61 (v+DX+DY));
    }

    @Override
    public void dec (HashMap<LongPoint, Integer> counts)
    {
        dec (counts, new LongPoint61 (v-DX-DY));
        dec (counts, new LongPoint61 (v-DX));
        dec (counts, new LongPoint61 (v-DX+DY));
        dec (counts, new LongPoint61 (v-DY));
        dec (counts, new LongPoint61 (v+DY));
        dec (counts, new LongPoint61 (v+DX-DY));
        dec (counts, new LongPoint61 (v+DX));
        dec (counts, new LongPoint61 (v+DX+DY));
    }
    
    static long mult_signed_hipart (long x, long y)
    {
        long A = hi (x);
        long B = ulo (x);
        long C = hi (y);
        long D = ulo (y);
                   
        long AC = A * C;
        long AD = A * D;
        long BC = B * C;
        long BD = B * D;
        
        long ADl_BCl_BDh = ulo (AD) + ulo (BC) + uhi (BD);
        return AC + hi (AD) + hi (BC) + uhi (ADl_BCl_BDh);
    }

    @Override
    public int hashCode ()
    {
        long sign = v >> 63;
        long div = (mult_signed_hipart (v, 2614885092524444427L) >> 27) - sign;
        return (int) (v - div * 946840871);
    }
}
