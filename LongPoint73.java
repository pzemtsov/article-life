import java.util.zip.CRC32;

final class LongPoint73 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint73 create (long v)
        {
            return new LongPoint73 (v);
        }
    };
    
    private LongPoint73 (long v)
    {
        super (v);
    }

    private byte[] b = new byte[8];
    private CRC32 crc = new CRC32 ();
    
    @Override
    public int hashCode ()
    {
        b[0] = (byte) (v >>>  0);
        b[1] = (byte) (v >>>  8);
        b[2] = (byte) (v >>> 16);
        b[3] = (byte) (v >>> 24);
        b[4] = (byte) (v >>> 32);
        b[5] = (byte) (v >>> 40);
        b[6] = (byte) (v >>> 48);
        b[7] = (byte) (v >>> 56);
        crc.reset ();
        crc.update (b,  0,  8);
        return (int) crc.getValue ();
    }
}
