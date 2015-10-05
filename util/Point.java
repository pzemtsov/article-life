package util;

public class Point
{
    public final int x, y;
    
    public Point (int x, int y)
    {
        this.x = x;
        this.y = y;
    }
       
    @Override
    public final boolean equals (Object obj)    
    {
        Point p = (Point) obj;
        return x == p.x && y == p.y;
    }
    
    @Override
    public final int hashCode ()
    {
        return x * 3 + y * 5;
    }
    
    @Override
    public String toString ()
    {
        return "(" + x + "," + y + ")";
    }

    public Point[] neighbours ()
    {
        return new Point[] {
            new Point (x-1, y-1),
            new Point (x-1, y),
            new Point (x-1, y+1),
            new Point (x, y-1),
            new Point (x, y+1),
            new Point (x+1, y-1),
            new Point (x+1, y),
            new Point (x+1, y+1)
        };
    }
}
