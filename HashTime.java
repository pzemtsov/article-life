public class HashTime
{
    void iterate (int N, Object x)
    {
        for (int i = 0; i < N; i++)
            x.hashCode ();
    }

    int sum (int N, Object x)
    {
        int s = 0;
        for (int i = 0; i < N; i++)
            s += x.hashCode ();
        return s;
    }
 
    void test (Object x)
    {
        System.out.printf ("%20s: ", x.getClass ().getName ());
        int N = 100000000;
        int s = 0;
        
        for (int iter = 0; iter < 3; iter ++) {
            long t1 = System.currentTimeMillis ();
            s += sum (N, x);
            long t2 = System.currentTimeMillis ();
            long t = t2-t1;
            System.out.printf (" %5d", t);
        }
        System.out.println ("; sum=" + s);
    }

    public static void main (String argv[])
    {
        int x = 531;
        int y = -295;
        
        HashTime t = new HashTime ();
        
        for (int i = 0; i < 2; i++) {
            t.test (new Point (x, y));
            t.test (LongUtil.fromPoint (x, y));
            t.test (new LongPoint (x, y));
            t.test (new LongPoint3 (x, y));
            t.test (new LongPoint4 (x, y));
            t.test (new LongPoint5 (x, y));
            t.test (new LongPoint6 (x, y));
            t.test (new LongPoint7 (x, y));
            t.test (new NullPoint (x, y));
        }
    }
}
