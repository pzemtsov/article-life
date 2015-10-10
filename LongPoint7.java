import java.util.zip.CRC32;

final class LongPoint7 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint create (long v)
        {
            return new LongPoint7 (v);
        }
    };
    
    private LongPoint7 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        CRC32 crc = new CRC32 ();
        crc.update ((int)(v>>> 0) & 0xFF);
        crc.update ((int)(v >>> 8) & 0xFF);
        crc.update ((int)(v >>> 16) & 0xFF);
        crc.update ((int)(v >>> 24) & 0xFF);
        crc.update ((int)(v >>> 32) & 0xFF);
        crc.update ((int)(v >>> 40) & 0xFF);
        crc.update ((int)(v >>> 48) & 0xFF);
        crc.update ((int)(v >>> 56) & 0xFF);
        return (int) crc.getValue ();
    }
}
