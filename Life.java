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
            if (! w0.get().equals (w.get())) {
                System.out.println ("Not equats " + w.getClass () + " at " + i);
                System.out.println ("w0 = " + w0.get());
                System.out.println ("w  = " + w.get());
                System.exit (0);
            }
            w0.step ();
            w.step ();
        }
    }
    
    private static void measure (Class<? extends Worker> cw) throws Exception
    {
        int K = 10000;
        System.out.printf ("%20s: time for %5d:", cw.getName (), K);
        
        long t = 0;
        for (int n = 0; n < 3; n++) {
            Worker w = cw.newInstance ();
            put (w, ACORN);
            long t1 = System.currentTimeMillis ();
            for (int i = 0; i < K; i++)
                w.step ();
            long t2 = System.currentTimeMillis ();
            t = t2 - t1;
            System.out.printf (" %5d", t);
        }
        System.out.printf (": %6.1f frames/sec\n", K * 1000.0 / t);
    }
    
    private static void test (Worker w) throws Exception
    {
        test (new Hash_Reference(), w, 100);
        measure (w.getClass ());
    }

    public static void main (String [] args) throws Exception
    {
        test (new Hash_Reference ());
        test (new Hash_Long ());
        test (new Hash_LongPoint ());
        test (new Hash_LongPoint3 ());
        test (new Hash_LongPoint4 ());
        test (new Hash_LongPoint5 ());
        test (new Hash_LongPoint6 ());
        test (new Hash_LongPoint7 ());
    }
}
