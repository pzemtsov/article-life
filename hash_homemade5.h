#ifndef _HASH_HOMEMADE5_H
#define _HASH_HOMEMADE5_H

#include "defs.h"
#include "cell.h"

template<class HASH = std::hash<LongPoint>, size_t CAPACITY = 8192> class Hash_HomeMade5 : public Worker
{
private:
    ActionCell**  table;
    HASH hasher;
    ActionCell full_list;

public:
    Hash_HomeMade5() : full_list(0, 0)
    {
        table = new ActionCell*[CAPACITY];
        for (size_t i = 0; i < CAPACITY; i++) {
            table[i] = 0;
        }
        full_list.next = full_list.prev = &full_list;
    }

    ~Hash_HomeMade5()
    {
        reset();
        delete [] table;
    }

    void reset()
    {
        for (size_t i = 0; i < CAPACITY; i++) {
            ActionCell* p = table[i];
            if (p) {
                table[i] = 0;
                while (p) {
                    ActionCell * q = p->table_next;
                    delete p;
                    p = q;
                }
            }
        }
        full_list.next = full_list.prev = &full_list;
    }

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

    ActionCell* get(LongPoint key) const
    {
        for (ActionCell* c = table[index(hash(key))]; c; c = c->table_next) {
            if (c->position == key) {
                return c;
            }
        }
        return 0;
    }

    void add_to_list(ActionCell *cell)
    {
        cell->next = full_list.next;
        cell->next->prev = cell;
        cell->prev = &full_list;
        full_list.next = cell;
    }

    void remove_from_list(ActionCell *cell)
    {
        cell->next->prev = cell->prev;
        cell->prev->next = cell->next;
    }

    void put(ActionCell* cell)
    {
        size_t ind = cell->index = index(hash(cell->position));
        cell->table_next = table[ind];
        table[ind] = cell;
        add_to_list(cell);
    }

    void remove(ActionCell* cell)
    {
        size_t index = cell->index;
        if (table[index] == cell) {
            table[index] = cell->table_next;
            remove_from_list(cell);
            delete cell;
            return;
        }
        for (ActionCell* c = table[index]; c; c = c->table_next) {
            if (c->table_next == cell) {
                c->table_next = cell->table_next;
                remove_from_list(cell);
                delete cell;
                return;
            }
        }
    }

    std::unordered_set<Point, PointHash> * get() const
    {
        auto r = new std::unordered_set < Point, PointHash >;
        for (ActionCell* cell = full_list.next; cell != &full_list; cell = cell->next) {
            if (cell->live) {
                r->insert(cell->toPoint());
            }
        }
        return r;
    }

    void inc(LongPoint w)
    {
        ActionCell* c = get(w);
        if (c)
            c->inc();
        else
            put(new ActionCell(w, 1));
    }

    void dec(LongPoint w)
    {
        ActionCell* c = get(w);
        if (!c->dec() && !c->live) {
            remove(c);
        }
    }

    void set(ActionCell* c)
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

    void reset(ActionCell* c)
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
        ActionCell* c = get(w);
        if (!c)
            put(c = new ActionCell(w, 0));
        set(c);
    }

    void step()
    {
        ActionCell *toSet = 0;
        ActionCell *toReset = 0;

        for (ActionCell* cell = full_list.next; cell != &full_list; cell = cell->next) {
            if (cell->live) {
                if (cell->neighbours < 2 || cell->neighbours > 3) {
                    cell->next_action = toReset;
                    toReset = cell;
                }
            }
            else {
                if (cell->neighbours == 3) {
                    cell->next_action = toSet;
                    toSet = cell;
                }
            }
        }
        for (ActionCell* c = toSet; c; c = c->next_action) {
            set(c);
        }
        for (ActionCell* c = toReset; c;) {
            ActionCell* next_action = c->next_action;
            reset(c);
            c = next_action;
        }
    }
};

#endif // _HASH_HOMEMADE5_H
