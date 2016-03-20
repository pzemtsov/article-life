#ifndef _HASH_LONG_H
#define _HASH_LONG_H

#include "defs.h"

template<class HASH = std::hash<LongPoint> > class Hash_LongPoint : public Worker
{
private:
    static const size_t HASH_SIZE = 8192;

    std::unordered_set<LongPoint, HASH> field;
    std::unordered_map<LongPoint, int, HASH> counts;

public:

    Hash_LongPoint(size_t hash_size = 8192) : field(hash_size), counts(hash_size)
    {}

    void reset()
    {
        field.clear();
        counts.clear();
    }

    void put(int x, int y)
    {
        set(fromPoint(x, y));
    }

    std::unordered_set<Point, PointHash> * get() const
    {
        auto r = new std::unordered_set < Point, PointHash >;
        for (LongPoint w : field) {
            r->insert(toPoint(w));
        }
        return r;
    }

private:
    void inc(LongPoint w)
    {
        ++counts[w];
    }

    void dec(LongPoint w)
    {
        if (!--counts[w]) {
            counts.erase(w);
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
        field.insert(w);
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
        field.erase(w);
    }

public:
    void step()
    {
        std::vector<LongPoint> toReset;
        std::vector<LongPoint> toSet;
        for (LongPoint w : field) {
            auto it = counts.find(w);
            if (it == counts.end() || it->second < 2 || it->second > 3) {
                toReset.push_back(w);
            }
        }
        for (auto w : counts) {
            if (w.second == 3 && field.find(w.first) == field.end()) {
                toSet.push_back(w.first);
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


#endif // _HASH_LONG_H
