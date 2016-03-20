#ifndef _HASH_HOMEMADE3_H
#define _HASH_HOMEMADE3_H

#include "defs.h"
#include "cell.h"

template<class HASH = std::hash<LongPoint>, size_t CAPACITY = 8192> class Hash_HomeMade3 : public Worker
{
private:
    ListedCell**  table;
    HASH hasher;
    std::vector<ListedCell*> toReset;
    std::vector<ListedCell*> toSet;
    ListedCell full_list;

public:
    Hash_HomeMade3() : full_list(0, 0)
    {
        table = new ListedCell*[CAPACITY];
        for (size_t i = 0; i < CAPACITY; i++) {
            table[i] = 0;
        }
        full_list.next = full_list.prev = &full_list;
    }

    ~Hash_HomeMade3()
    {
        reset();
        delete [] table;
    }

    void reset()
    {
        for (size_t i = 0; i < CAPACITY; i++) {
            ListedCell* p = table[i];
            if (p) {
                table[i] = 0;
                while (p) {
                    ListedCell * q = p->table_next;
                    delete p;
                    p = q;
                }
            }
        }
        full_list.next = full_list.prev = &full_list;
    }

#define ITERATE(cell) \
    for (ListedCell* cell = full_list.next; cell != &full_list; cell = cell->next)

#define END_ITERATE

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

    ListedCell* get(LongPoint key) const
    {
        for (ListedCell* c = table[index(hash(key))]; c; c = c->table_next) {
            if (c->position == key) {
                return c;
            }
        }
        return 0;
    }

    void add_to_list(ListedCell *cell)
    {
        cell->next = full_list.next;
        cell->next->prev = cell;
        cell->prev = &full_list;
        full_list.next = cell;
    }

    void remove_from_list(ListedCell *cell)
    {
        cell->next->prev = cell->prev;
        cell->prev->next = cell->next;
    }

    void put(ListedCell* cell)
    {
        size_t ind = cell->index = index(hash(cell->position));
        cell->table_next = table[ind];
        table[ind] = cell;
        add_to_list(cell);
    }

    void remove(ListedCell* cell)
    {
        size_t index = cell->index;
        if (table[index] == cell) {
            table[index] = cell->table_next;
            remove_from_list(cell);
            delete cell;
            return;
        }
        for (ListedCell* c = table[index]; c; c = c->table_next) {
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
        ITERATE (cell) {
            if (cell->live) {
                r->insert(cell->toPoint());
            }
        } END_ITERATE
        return r;
    }

    void inc(LongPoint w)
    {
        ListedCell* c = get(w);
        if (c)
            c->inc();
        else
            put(new ListedCell(w, 1));
    }

    void dec(LongPoint w)
    {
        ListedCell* c = get(w);
        if (!c->dec() && !c->live) {
            remove(c);
        }
    }

    void set(ListedCell* c)
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

    void reset(ListedCell* c)
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
        ListedCell* c = get(w);
        if (!c)
            put(c = new ListedCell(w, 0));
        set(c);
    }

    void step()
    {
        toSet.clear();
        toReset.clear();

        ITERATE(cell) {
            if (cell->live) {
                if (cell->neighbours < 2 || cell->neighbours > 3) toReset.push_back(cell);
            }
            else {
                if (cell->neighbours == 3) toSet.push_back(cell);
            }
        } END_ITERATE
        for (ListedCell * c : toSet) {
            set(c);
        }
        for (ListedCell * c : toReset) {
            reset(c);
        }
    }
};

#undef ITERATE
#undef END_ITERATE

#endif // _HASH_HOMEMADE3_H
