import java.util.Set;

import util.Point;

public abstract class Worker
{
    abstract void reset ();
    abstract void put (int x, int y);
    abstract Set<Point> get ();
    int size ()
    {
        return get().size ();
    }
    
    abstract void step ();
    
    String getName ()
    {
        return getClass().getName ();
    }
}
