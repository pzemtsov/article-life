
public class NativeCRC32
{
    static {
        System.loadLibrary ("NativeCRC32");
    }

    public static native int crc32 (long n);
    public static native int crc32c (long n);
    public static native int crc0 (long n);
}
