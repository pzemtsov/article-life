import java.util.zip.CRC32;


final class LongPoint71 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint71 create (long v)
        {
            return new LongPoint71 (v);
        }
    };
    
    private LongPoint71 (long v)
    {
        super (v);
    }

    @Override
    public int hashCode ()
    {
        byte[] b = new byte[8];
        b[0] = (byte) (v >>>  0);
        b[1] = (byte) (v >>>  8);
        b[2] = (byte) (v >>> 16);
        b[3] = (byte) (v >>> 24);
        b[4] = (byte) (v >>> 32);
        b[5] = (byte) (v >>> 40);
        b[6] = (byte) (v >>> 48);
        b[7] = (byte) (v >>> 56);
        CRC32 crc = new CRC32 ();
        crc.update (b,  0,  8);
        return (int) crc.getValue ();
    }
}
