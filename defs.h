#ifndef _DEFS_H
#define _DEFS_H

#include <stdint.h>
#include <unordered_set>
#include <vector>
#include <unordered_map>
#include <array>

class Point
{
public:
    int x, y;

    Point() : x(0), y(0)
    {}

    Point(int x, int y) : x(x), y(y)
    {}

    Point(const Point&p) : x(p.x), y(p.y)
    {}

    inline bool operator== (const Point& p) const
    {
        return x == p.x && y == p.y;
    }

    inline std::array<Point, 8> neighbours() const
    {
        std::array<Point, 8> result = {
            Point(x - 1, y - 1),
            Point(x - 1, y),
            Point(x - 1, y + 1),
            Point(x, y - 1),
            Point(x, y + 1),
            Point(x + 1, y - 1),
            Point(x + 1, y),
            Point(x + 1, y + 1)
        };
        return result;
    }
};

typedef uint64_t LongPoint;
typedef uint32_t HashType;

const unsigned OFFSET = 0x8000000;
const LongPoint DX = 0x100000000L;
const LongPoint DY = 1;

inline LongPoint w(unsigned hi, unsigned lo)
{
    return ((LongPoint)(uint32_t)hi << 32) | (uint32_t)lo;
}

inline unsigned hi(LongPoint w)
{
    return (unsigned)(w >> 32);
}

inline unsigned lo(LongPoint w)
{
    return (unsigned)(w & 0xFFFFFFFFL);
}

inline int x(LongPoint w)
{
    return (int) (hi(w) - OFFSET);
}

inline int y(LongPoint w)
{
    return (int) (lo(w) - OFFSET);
}

inline LongPoint fromPoint(int x, int y)
{
    return w(x + OFFSET, y + OFFSET);
}

inline Point toPoint(LongPoint w)
{
    return Point(x(w), y(w));
}

class PointHash
{
public:
    inline HashType operator() (Point p) const
    {
        return (HashType) (p.x * 3 + p.y * 5);
    }
};

class Worker
{
public:
    virtual void reset() = 0;
    virtual void put(int x, int y) = 0;
    virtual std::unordered_set<Point, PointHash> *get() const = 0;
    virtual void step() = 0;
    virtual size_t size() {
        auto  s = get();
        size_t size = s->size();
        delete s;
        return size;
    }
};


#endif // _DEFS_H

