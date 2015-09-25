import java.util.Set;

public interface Worker
{
    void put (int x, int y);
    Set<Point> get ();
    void step ();
}
