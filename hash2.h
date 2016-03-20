#ifndef _HASH_LONG3_H
#define _HASH_LONG3_H

#include "defs.h"
#include "value.h"

template<class HASH = std::hash<LongPoint> > class Hash2 : public Worker
{
private:
    std::unordered_map<LongPoint, Value, HASH> field;

public:

    Hash2(size_t hash_size = 8192) : field(hash_size)
    {}

    void reset()
    {
        field.clear();
    }

    void put(int x, int y)
    {
        set(fromPoint(x, y));
    }

    std::unordered_set<Point, PointHash> * get() const
    {
        auto r = new std::unordered_set < Point, PointHash >;
        for (auto w : field) {
            if (w.second.live) {
                r->insert(toPoint(w.first));
            }
        }
        return r;
    }

private:
    void inc(LongPoint w)
    {
        field[w].inc();
    }

    void dec(LongPoint w)
    {
        Value& v = field[w];
        if (!v.dec() && !v.live) {
            field.erase(w);
        }
    }

    void set(LongPoint w)
    {
        inc(w - DX - DY);
        inc(w - DX);
        inc(w - DX + DY);
        inc(w - DY);
        inc(w + DY);
        inc(w + DX - DY);
        inc(w + DX);
        inc(w + DX + DY);
        field[w].set();
    }

    void reset(LongPoint w)
    {
        dec(w - DX - DY);
        dec(w - DX);
        dec(w - DX + DY);
        dec(w - DY);
        dec(w + DY);
        dec(w + DX - DY);
        dec(w + DX);
        dec(w + DX + DY);
        Value& v = field[w];
        v.reset();
        if (v.count == 0) {
            field.erase(w);
        }
    }

public:
    void step()
    {
        std::vector<LongPoint> toReset;
        std::vector<LongPoint> toSet;
        for (auto w : field) {
            Value& v = w.second;
            if (v.live) {
                if (v.count < 2 || v.count > 3) toReset.push_back(w.first);
            }
            else {
                if (v.count == 3) toSet.push_back(w.first);
            }
        }
        for (LongPoint w : toSet) {
            set(w);
        }
        for (LongPoint w : toReset) {
            reset(w);
        }
    }
};

#endif // _HASH_LONG3_H

