package util;


public class LongUtil
{
    public static final int OFFSET = 0x8000000;
    public static final long DX = 0x100000000L;
    public static final long DY = 1;

    public static long w (int hi, int lo)
    {
        return ((long) hi << 32) | lo & 0xFFFFFFFFL;
    }

    public static int hi (long w)
    {
        return (int) (w >>> 32);
    }

    public static int lo (long w)
    {
        return (int) w;
    }

    public static long uhi (long x)
    {
        return x >>> 32;
    }
    
    public static long ulo (long x)
    {
        return x & 0xFFFFFFFFL;
    }

    public static int x (long w)
    {
        return hi (w) - OFFSET;
    }

    public static int y (long w)
    {
        return lo (w) - OFFSET;
    }
    
    public static long fromPoint (int x, int y)
    {
        return w (x + OFFSET, y + OFFSET);
    }
    
    public static Point toPoint (long w)
    {
        return new Point (x (w), y (w));
    }
}
