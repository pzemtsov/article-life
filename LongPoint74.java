import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.CRC32;

final class LongPoint74 extends LongPoint
{
    public static final LongPoint.Factory factory = new LongPoint.Factory ()
    {
        @Override
        public LongPoint74 create (long v)
        {
            return new LongPoint74 (v);
        }
    };
    
    private LongPoint74 (long v)
    {
        super (v);
    }

    static private ByteBuffer buf = ByteBuffer.allocateDirect (8).order (ByteOrder.LITTLE_ENDIAN);
    
    @Override
    public int hashCode ()
    {
        CRC32 crc = new CRC32 ();
        buf.putLong (0,  v);
        buf.position (0);
        crc.update (buf);
        return (int) crc.getValue ();
    }
}
