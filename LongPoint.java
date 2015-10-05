import static util.LongUtil.*;
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
    
    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
