public class LongPoint78 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint78 create (long v)
        {
            return new LongPoint78 (v);
        }
    };
    
    private LongPoint78 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        return NativeCRC32.crc0 (v);
    }
}
