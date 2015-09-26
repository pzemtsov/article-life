import java.util.ArrayList;

public class HashTime1
{
    static int sum (int N, Object x)
    {
        int sum = 0;
        for (int i = 0; i < N; i++)
            sum += x.hashCode ();
        return sum;
    }
 
    static void test (Object x)
    {
        System.out.printf ("%20s: ", x.getClass ().getName ());
        int N = 100000000;
        int sum = 0;
        
        for (int iter = 0; iter < 3; iter ++) {
            long t1 = System.currentTimeMillis ();
            sum += sum (N, x);
            long t2 = System.currentTimeMillis ();
            long t = t2-t1;
            System.out.printf (" %5d", t);
        }
        System.out.println ("; sum = " + sum);
    }

    static int sumArray (ArrayList<Object> a)
    {
        int sum = 0;
        for (int i = 0; i < a.size (); i++) {
            sum += sum (1, a.get(i));
        }
        return sum;
    }
    
    public static void main (String argv[])
    {
        int x = 531;
        int y = -295;
        ArrayList<Object> a = new ArrayList<Object> ();
        int sum = 0;

        for (int i = 0; i < 100000; i++) {
            a.add (new Point (x, y));
            a.add (LongUtil.fromPoint (x, y));
            a.add (new LongPoint (x, y));
            a.add (new LongPoint3 (x, y));
            a.add (new LongPoint4 (x, y));
            a.add (new LongPoint5 (x, y));
            a.add (new LongPoint6 (x, y));
            a.add (new LongPoint60 (x, y));
            a.add (new LongPoint61 (x, y));
            a.add (new LongPoint7 (x, y));
            a.add (new NullPoint (x, y));
        }

        for (int j = 0; j < 100; j++) {
            sum += sumArray (a);
        }
        System.out.println (" Sum = " + sum);


        for (int i = 0; i < 2; i++) {
            test (new Point (x, y));
            test (LongUtil.fromPoint (x, y));
            test (new LongPoint (x, y));
            test (new LongPoint3 (x, y));
            test (new LongPoint4 (x, y));
            test (new LongPoint5 (x, y));
            test (new LongPoint6 (x, y));
            test (new LongPoint60 (x, y));
            test (new LongPoint61 (x, y));
            test (new LongPoint7 (x, y));
            test (new NullPoint (x, y));
        }
    }
}
