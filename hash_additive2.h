#ifndef _HASH_ADDITIVE2_H
#define _HASH_ADDITIVE2_H

#include "defs.h"
#include "cell.h"

template<size_t CAPACITY = 8192> class Hash_Additive2 : public Worker
{
private:
    HashCell**  table;
    HashCell full_list;
    HashCell * free_list;
    const static unsigned A = 1735499;
    const static unsigned B = 7436369;

public:
    Hash_Additive2() : full_list(0, 0, 0), free_list(0)
    {
        table = new HashCell*[CAPACITY];
        for (size_t i = 0; i < CAPACITY; i++) {
            table[i] = 0;
        }
        full_list.next = full_list.prev = &full_list;
    }

    ~Hash_Additive2()
    {
        reset();
        delete table;
    }

    HashCell * allocate(LongPoint position, int neighbours, bool live = false)
    {
        if (!free_list) {
            return new HashCell(position, neighbours, live);
        }
        HashCell * result = free_list;
        free_list = result->next;
        result->init(position, neighbours, live);
        return result;
    }

    void deallocate(HashCell * cell)
    {
        cell->next = free_list;
        free_list = cell;
    }

    void reset()
    {
        for (size_t i = 0; i < CAPACITY; i++) {
            HashCell* p = table[i];
            if (p) {
                table[i] = 0;
                while (p) {
                    HashCell * q = p->table_next;
                    deallocate(p);
                    p = q;
                }
            }
        }
        full_list.next = full_list.prev = &full_list;
        while (free_list) {
            HashCell * p = free_list->next;
            delete free_list;
            free_list = p;
        }
    }

    inline HashType hash(LongPoint key) const
    {
        return (HashType) (hi(key) * A + lo(key) * B);

    }

    size_t index(HashType hash) const
    {
        return hash & (CAPACITY - 1);
    }

    HashCell* get(LongPoint key, HashType hash) const
    {
        for (HashCell* c = table[index(hash)]; c; c = c->table_next) {
            if (c->position == key) {
                return c;
            }
        }
        return 0;
    }

    void add_to_list(HashCell *cell)
    {
        cell->next = full_list.next;
        cell->next->prev = cell;
        cell->prev = &full_list;
        full_list.next = cell;
    }

    void remove_from_list(HashCell *cell)
    {
        cell->next->prev = cell->prev;
        cell->prev->next = cell->next;
    }

    void put(HashCell* cell)
    {
        size_t ind = index(cell->hash);
        cell->table_next = table[ind];
        table[ind] = cell;
        add_to_list(cell);
    }

    void remove(HashCell* cell)
    {
        size_t ind = index(cell->hash);
        if (table[ind] == cell) {
            table[ind] = cell->table_next;
            remove_from_list(cell);
            deallocate(cell);
            return;
        }
        for (HashCell* c = table[ind]; c; c = c->table_next) {
            if (c->table_next == cell) {
                c->table_next = cell->table_next;
                remove_from_list(cell);
                deallocate(cell);
                return;
            }
        }
    }

    std::unordered_set<Point, PointHash> * get() const
    {
        auto r = new std::unordered_set < Point, PointHash >;
        for (HashCell* cell = full_list.next; cell != &full_list; cell = cell->next) {
            if (cell->live) {
                r->insert(cell->toPoint());
            }
        }
        return r;
    }

    void inc(LongPoint w, HashType hash)
    {
        HashCell* c = get(w, hash);
        if (c)
            c->inc();
        else
            put(allocate(w, hash, 1));
    }

    void dec(LongPoint w, HashType hash)
    {
        HashCell* c = get(w, hash);
        if (!c->dec() && !c->live) {
            remove(c);
        }
    }

    void set(HashCell* c)
    {
        LongPoint w = c->position;
        HashType h = c->hash;
        inc(w - DX - DY, h - A - B);
        inc(w - DX,      h - A);
        inc(w - DX + DY, h - A + B);
        inc(w - DY,      h - B);
        inc(w + DY,      h + B);
        inc(w + DX - DY, h + A - B);
        inc(w + DX,      h + A);
        inc(w + DX + DY, h + A + B);
        c->set();
    }

    void reset(HashCell* c)
    {
        LongPoint w = c->position;
        HashType h = c->hash;
        dec(w - DX - DY, h - A - B);
        dec(w - DX,      h - A);
        dec(w - DX + DY, h - A + B);
        dec(w - DY,      h - B);
        dec(w + DY,      h + B);
        dec(w + DX - DY, h + A - B);
        dec(w + DX,      h + A);
        dec(w + DX + DY, h + A + B);
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
        HashCell* c = get(w, hash(w));
        if (!c)
            put(c = allocate(w, hash(w), 0));
        set(c);
    }

    void step()
    {
        HashCell *toSet = 0;
        HashCell *toReset = 0;

        for (HashCell* cell = full_list.next; cell != &full_list; cell = cell->next) {
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
        for (HashCell* c = toSet; c; c = c->next_action) {
            set(c);
        }
        for (HashCell* c = toReset; c;) {
            HashCell* next_action = c->next_action;
            reset(c);
            c = next_action;
        }
    }
};

#endif // _HASH_ADDITIVE2_H
