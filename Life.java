import java.util.HashSet;
import java.util.Set;

import util.Point;


public class Life
{
    private static void put (Worker w, String [] p)
    {
        for (int y = 0; y < p.length; y++) {
            for (int x = 0; x < p[y].length (); x++) {
                if (p[y].charAt (x) == '#') {
                    w.put (x, y);
                }
            }
        }
    }
    
    private static final String [] ACORN = new String [] {
                    "##  ###",
                    ":::#:::",
                    ":#"
    };
    
    private static void test (Worker w0, Worker w, int K)
    {
        put (w0, ACORN);
        put (w, ACORN);
        
        for (int i = 0; i < K; i++) {
            Set<Point> set0 = w0.get ();
            Set<Point> set1 = w.get ();
            if (! set0.equals (set1)) {
                System.out.println ("Not equals " + w.getClass () + " at " + i);
                System.out.println ("w0 = " + set0);
                System.out.println ("w  = " + set1);
                HashSet<Point> s0 = new HashSet<Point>(set0);
                HashSet<Point> s1 = new HashSet<Point>(set1);
                s0.removeAll (set1);
                s1.removeAll (set0);
                System.out.println ("w0 - w = " + s0);
                System.out.println ("w - w0 = " + s1);
                System.exit (0);
            }
            w0.step ();
            w.step ();
        }
    }
    
    private static void measure (Worker w) throws Exception
    {
        int K = 10000;
        System.out.printf ("%30s: time for %5d:", w.getName (), K);
        
        long t = 0;
        for (int n = 0; n < 3; n++) {
            w.reset ();
            put (w, ACORN);
            long t1 = System.currentTimeMillis ();
            for (int i = 0; i < K; i++) {
                w.step ();
            }
            long t2 = System.currentTimeMillis ();
            t = t2 - t1;
            System.out.printf (" %5d", t);
        }
        System.out.printf (": %6.1f frames/sec\n", K * 1000.0 / t);
    }
    
    private static void test (Worker w) throws Exception
    {
        test (new Hash_Reference(), w, 100);
        measure (w);
    }
    
    public static void main (String [] args) throws Exception
    {
//      test (new Hash_Reference ());
//      test (new Hash_LongPoint (LongPoint6.factory));
        test (new Hash1 (LongPoint6.factory));
    }
}
