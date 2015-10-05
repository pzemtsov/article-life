import static util.LongUtil.fromPoint;


public abstract class LongPointFactory
{
    public abstract LongPoint create (long v);

    public LongPoint create (int x, int y)
    {
        return create (fromPoint (x, y));
    }
}