import static util.LongUtil.fromPoint;
import util.LongUtil;
import util.Point;

public abstract class LongPoint
{
    public static abstract class Factory
    {
        public abstract LongPoint create (long v);

        public LongPoint create (int x, int y)
        {
            return create (fromPoint (x, y));
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
    public String toString ()
    {
        return toPoint().toString ();
    }
}
