#ifndef _HASH_LONG7_H
#define _HASH_LONG7_H

#include "defs.h"
#include "value.h"

template<class HASH = std::hash<LongPoint> > class Hash7 : public Worker
{
private:
    std::unordered_map<LongPoint, Value, HASH> field;

    typedef std::pair<LongPoint, Value*> Entry;
    Entry * toReset;
    Entry * toSet;
    size_t array_size;
    static const size_t INITIAL_ARRAY_SIZE = 128;

public:

    Hash7(size_t hash_size = 8192) : field(hash_size), array_size(INITIAL_ARRAY_SIZE)
    {
        toReset = new Entry[INITIAL_ARRAY_SIZE];
        toSet = new Entry[INITIAL_ARRAY_SIZE];
    }

    ~Hash7()
    {
        delete [] toSet;
        delete [] toReset;
    }

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
        if (field.size() > array_size) {
            array_size = field.size() * 2;
            delete [] toSet;
            delete [] toReset;
            toReset = new Entry[array_size];
            toSet = new Entry[array_size];
        }
        size_t set_count = 0;
        size_t reset_count = 0;

        for (auto it = field.begin(); it != field.end(); it++) {
            Value& v = it->second;
            if (v.live) {
                if (v.count < 2 || v.count > 3) toReset[reset_count++] = Entry(it->first, &v);
            }
            else {
                if (v.count == 3) toSet[set_count++] = Entry(it->first, &v);
            }
        }
        for (size_t i = 0; i < set_count; i++) {
            set(toSet[i].first, *toSet[i].second);
        }
        for (size_t i = 0; i < reset_count; i++) {
            reset(toReset[i].first, *toReset[i].second);
        }
    }
};

#endif //  _HASH_LONG7_H