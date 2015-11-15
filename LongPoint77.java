final class LongPoint77 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint77 create (long v)
        {
            return new LongPoint77 (v);
        }
    };
    
    private LongPoint77 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return NativeCRC32.crc32c (v);
    }
}
