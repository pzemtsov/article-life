final class LongPoint75 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint75 create (long v)
        {
            return new LongPoint75 (v);
        }
    };
    
    private LongPoint75 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return TableCRC32.crc32 (v);
    }
}
