#ifndef _HASH_HOMEMADE2_H
#define _HASH_HOMEMADE2_H

#include "defs.h"
#include "cell.h"

template<class HASH = std::hash<LongPoint>, size_t CAPACITY = 8192> class Hash_HomeMade2 : public Worker
{
private:
    Cell**  table;
    HASH hasher;
    std::vector<Cell*> toReset;
    std::vector<Cell*> toSet;

public:
    Hash_HomeMade2()
    {
        table = new Cell*[CAPACITY];
        for (size_t i = 0; i < CAPACITY; i++) {
            table[i] = 0;
        }
    }

    ~Hash_HomeMade2()
    {
        reset();
        delete [] table;
    }

    void reset()
    {
        for (size_t i = 0; i < CAPACITY; i++) {
            Cell* p = table[i];
            if (p) {
                table[i] = 0;
                while (p) {
                    Cell * q = p->table_next;
                    delete p;
                    p = q;
                }
            }
        }
    }

#define ITERATE(cell) \
    for (size_t i = 0; i < CAPACITY; i++) {\
        for (Cell* cell = table[i]; cell; cell = cell->table_next)

#define END_ITERATE }

    inline HashType hash(LongPoint key) const
    {
        auto h = hasher(key);
        if (sizeof(h) == 8) {
            return hi(h) ^ lo(h);
        }
        else {
            return (HashType)h;
        }
    }

    inline size_t index(HashType hash) const
    {
        return hash & (CAPACITY - 1);
    }

    Cell* get(LongPoint key) const
    {
        for (Cell* c = table[index(hash(key))]; c; c = c->table_next) {
            if (c->position == key) {
                return c;
            }
        }
        return 0;
    }

    void put(Cell* cell)
    {
        size_t ind = cell->index = index(hash(cell->position));
        cell->table_next = table[ind];
        table[ind] = cell;
    }

    void remove(Cell* cell)
    {
        size_t index = cell->index;
        if (table[index] == cell) {
            table[index] = cell->table_next;
            delete cell;
            return;
        }
        for (Cell* c = table[index]; c; c = c->table_next) {
            if (c->table_next == cell) {
                c->table_next = cell->table_next;
                delete cell;
                return;
            }
        }
    }

    std::unordered_set<Point, PointHash> * get() const
    {
        auto r = new std::unordered_set < Point, PointHash >;
        ITERATE(c) {
            if (c->live) {
                r->insert(c->toPoint());
            }
        } END_ITERATE
        return r;
    }

    void inc(LongPoint w)
    {
        Cell* c = get(w);
        if (c)
            c->inc();
        else
            put(new Cell(w, 1));
    }

    void dec(LongPoint w)
    {
        Cell* c = get(w);
        if (!c->dec() && !c->live) {
            remove(c);
        }
    }

    void set(Cell* c)
    {
        LongPoint w = c->position;
        inc(w - DX - DY);
        inc(w - DX);
        inc(w - DX + DY);
        inc(w - DY);
        inc(w + DY);
        inc(w + DX - DY);
        inc(w + DX);
        inc(w + DX + DY);
        c->set();
    }

    void reset(Cell* c)
    {
        LongPoint w = c->position;
        dec(w - DX - DY);
        dec(w - DX);
        dec(w - DX + DY);
        dec(w - DY);
        dec(w + DY);
        dec(w + DX - DY);
        dec(w + DX);
        dec(w + DX + DY);
        if (c->neighbours == 0) {
            remove(c);
        }
        else {
            c->reset();
        }
    }

    void put(int x, int y)
    {
        LongPoint w = fromPoint(x, y);
        Cell* c = get(w);
        if (!c)
            put(c = new Cell(w, 0));
        set(c);
    }

    void step()
    {
        toSet.clear();
        toReset.clear();

        ITERATE (cell) {
            if (cell->live) {
                if (cell->neighbours < 2 || cell->neighbours > 3) toReset.push_back(cell);
            }
            else {
                if (cell->neighbours == 3) toSet.push_back(cell);
            }
        } END_ITERATE
        for (Cell * c : toSet) {
            set(c);
        }
        for (Cell * c : toReset) {
            reset(c);
        }
    }
};
#undef ITERATE
#undef END_ITERATE

#endif // _HASH_HOMEMADE2_H
