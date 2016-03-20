#ifndef _HASH_LONG5_H
#define _HASH_LONG5_H

#include "defs.h"
#include "value.h"

template<class HASH = std::hash<LongPoint> > class Hash5 : public Worker
{
private:
    std::unordered_map<LongPoint, Value, HASH> field;

    typedef std::pair<LongPoint, Value&> Entry;

public:

    Hash5(size_t hash_size = 8192) : field(hash_size)
    {}

    void reset()
    {
        field.clear();
    }

    void put(int x, int y)
    {
        LongPoint p = fromPoint(x, y);
        set(p, field[p]);
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

    void set(LongPoint w, Value& v)
    {
        inc(w - DX - DY);
        inc(w - DX);
        inc(w - DX + DY);
        inc(w - DY);
        inc(w + DY);
        inc(w + DX - DY);
        inc(w + DX);
        inc(w + DX + DY);
        v.set();
    }

    void reset(LongPoint w, Value& v)
    {
        dec(w - DX - DY);
        dec(w - DX);
        dec(w - DX + DY);
        dec(w - DY);
        dec(w + DY);
        dec(w + DX - DY);
        dec(w + DX);
        dec(w + DX + DY);
        v.reset();
        if (v.count == 0) {
            field.erase(w);
        }
    }

public:
    void step()
    {
        std::vector<Entry> toReset;
        std::vector<Entry> toSet;
        for (auto it = field.begin(); it != field.end(); it++) {
            Value& v = it->second;
            if (v.live) {
                if (v.count < 2 || v.count > 3) toReset.push_back(Entry(it->first, v));
            }
            else {
                if (v.count == 3) toSet.push_back(Entry(it->first, v));
            }
        }
        for (Entry w : toSet) {
            set(w.first, w.second);
        }
        for (Entry w : toReset) {
            reset(w.first, w.second);
        }
    }
};

#endif // _HASH_LONG5
