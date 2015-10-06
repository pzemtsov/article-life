import static util.LongUtil.DX;
import static util.LongUtil.DY;
import static util.LongUtil.fromPoint;
import static util.LongUtil.hi;
import static util.LongUtil.lo;

import java.util.HashMap;

import util.LongUtil;
import util.Point;

class LongPoint
{
    public static class Factory extends LongPointFactory
    {
        @Override
        public LongPoint create (long v)
        {
            return new LongPoint (v);
        }
    }

    final long v;
    
    protected LongPoint (long v)
    {
        this.v = v;
    }

    public LongPoint (int x, int y)
    {
        this.v = fromPoint (x, y);
    }
    
    public Point toPoint ()
    {
        return LongUtil.toPoint (v);
    }
    
    @Override
    public boolean equals (Object v2)
    {
        return ((LongPoint) v2).v == v;
    }
    
    @Override
    public int hashCode ()
    {
        return hi(v) * 3 + lo(v) * 5;
    }

    protected void inc (HashMap<LongPoint, Integer> counts, LongPoint key)
    {
        Integer c = counts.get (key);
        counts.put (key, c == null ? 1 : c+1);
    }

    protected void dec (HashMap<LongPoint, Integer> counts, LongPoint key)
    {
        int c = counts.get (key)-1;
        if (c != 0) {
            counts.put (key, c);
        } else {
            counts.remove (key);
        }
    }

    public void inc (HashMap<LongPoint, Integer> counts)
    {
        inc (counts, new LongPoint (v-DX-DY));
        inc (counts, new LongPoint (v-DX));
        inc (counts, new LongPoint (v-DX+DY));
        inc (counts, new LongPoint (v-DY));
        inc (counts, new LongPoint (v+DY));
        inc (counts, new LongPoint (v+DX-DY));
        inc (counts, new LongPoint (v+DX));
        inc (counts, new LongPoint (v+DX+DY));
    }

    public void dec (HashMap<LongPoint, Integer> counts)
    {
        dec (counts, new LongPoint (v-DX-DY));
        dec (counts, new LongPoint (v-DX));
        dec (counts, new LongPoint (v-DX+DY));
        dec (counts, new LongPoint (v-DY));
        dec (counts, new LongPoint (v+DY));
        dec (counts, new LongPoint (v+DX-DY));
        dec (counts, new LongPoint (v+DX));
        dec (counts, new LongPoint (v+DX+DY));
    }
    
    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
