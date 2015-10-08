final class NullPoint extends LongPoint
{
    public static class Factory extends LongPoint.Factory
    {
        @Override
        public NullPoint create (long v)
        {
            return new NullPoint (v);
        }
    }

    public NullPoint (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return 0;
    }
    
    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
