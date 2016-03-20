#ifndef _HASH_HOMEMADE_H
#define _HASH_HOMEMADE_H

#include <functional>
#include "defs.h"
#include "cell.h"

template<class HASH = std::hash<LongPoint>, size_t CAPACITY = 8192> class Field
{
private:
    
    Cell**  table;
    HASH hasher;

public:
    Field()
    {
        table = new Cell*[CAPACITY];
        for (size_t i = 0; i < CAPACITY; i++) {
            table[i] = 0;
        }
    }

    ~Field()
    {
        clear();
        delete [] table;
    }

    void clear()
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

    inline HashType hash(LongPoint key) const
    {
        auto h = hasher(key);
        if (sizeof(h) == 8) {
            return hi(h) ^ lo(h);
        }
        else {
            return (HashType) h;
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

    void iterate(std::function<void (Cell*)> f) const
    {
        for (size_t i = 0; i < CAPACITY; i++) {
            for (Cell* c = table[i]; c; c = c->table_next) {
                f(c);
            }
        }
    }
};


template<class HASH = std::hash<LongPoint>, size_t CAPACITY = 8192> class Hash_HomeMade : public Worker
{
private:
    Field<HASH, CAPACITY> field;
    std::vector<Cell*> toReset;
    std::vector<Cell*> toSet;

public:
    Hash_HomeMade()
    {}

    void reset()
    {
        field.clear();
    }

    std::unordered_set<Point, PointHash> * get() const
    {
        auto r = new std::unordered_set < Point, PointHash >;
        field.iterate([r](Cell * c) {
            if (c->live) {
                r->insert(c->toPoint());
            }
        });
        return r;
    }

    void inc(LongPoint w)
    {
        Cell* c = field.get(w);
        if (c)
            c->inc();
        else
            field.put(new Cell(w, 1));
    }

    void dec(LongPoint w)
    {
        Cell* c = field.get(w);
        if (!c->dec() && !c->live) {
            field.remove(c);
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
            field.remove(c);
        }
        else {
            c->reset();
        }
    }

    void put(int x, int y)
    {
        LongPoint w = fromPoint(x, y);
        Cell* c = field.get(w);
        if (!c)
            field.put(c = new Cell(w, 0));
        set(c);
    }

    void step()
    {
        toSet.clear();
        toReset.clear();

        field.iterate([this](Cell * cell) {
            if (cell->live) {
                if (cell->neighbours < 2 || cell->neighbours > 3) toReset.push_back(cell);
            }
            else {
                if (cell->neighbours == 3) toSet.push_back(cell);
            }
        });
        for (Cell * c : toSet) {
            set(c);
        }
        for (Cell * c : toReset) {
            reset(c);
        }
    }
};

#endif // _HASH_HOMEMADE_H
