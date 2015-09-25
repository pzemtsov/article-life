import java.util.zip.CRC32;


final class LongPoint7 extends LongUtil
{
    final long v;
    
    public LongPoint7 (long v)
    {
        this.v = v;
    }

    public LongPoint7 (int x, int y)
    {
        this.v = fromPoint (x, y);
    }
    
    public Point toPoint ()
    {
        return toPoint (v);
    }
    
    @Override
    public boolean equals (Object v2)
    {
        return ((LongPoint7) v2).v == v;
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
    
    @Override
    public String toString ()
    {
        return toPoint().toString ();
    }
}
