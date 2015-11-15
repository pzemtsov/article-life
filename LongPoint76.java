final class LongPoint76 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint76 create (long v)
        {
            return new LongPoint76 (v);
        }
    };
    
    private LongPoint76 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return NativeCRC32.crc32 (v);
    }
}
