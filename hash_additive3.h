#ifndef _HASH_ADDITIVE3_H
#define _HASH_ADDITIVE3_H

#include "defs.h"

typedef uint64_t HashedLongPoint;

class AdditiveCell
{
    static const unsigned Ar = 1651619427;
    static const unsigned Br = 2058014897;

public:

    static const unsigned A = 1735499;
    static const unsigned B = 7436369;
    static const HashedLongPoint MASK = 0x7FFFFFFF7FFFFFFFL;

    HashedLongPoint position;
    int neighbours;
    bool live;
    AdditiveCell * table_next;
    AdditiveCell * next;
    AdditiveCell * prev;
    AdditiveCell * next_action;

    AdditiveCell(HashedLongPoint position, int neighbours, bool live = false) : position(position), neighbours(neighbours), live(live), table_next(0), next(0), prev(0), next_action(0)
    {}

    inline void init(HashedLongPoint position, int neighbours, bool live = false)
    {
        this->position = position;
        this->neighbours = neighbours;
        this->live = live;
    }

    static inline HashedLongPoint encode(int x, int y)
    {
        return w(x * A, y * B) & MASK;
    }

    static inline Point decode(HashedLongPoint hash)
    {
        int x = (int32_t)(hi(hash) * Ar) << 1 >> 1;
        int y = (int32_t)(lo(hash) * Br) << 1 >> 1;
        return Point(x, y);
    }

    inline Point toPoint() const
    {
        return decode (position);
    }

    inline void inc()
    {
        ++neighbours;
    }

    inline bool dec()
    {
        return --neighbours != 0;
    }

    inline void set()
    {
        live = true;
    }

    inline void reset()
    {
        live = false;
    }
};

template<size_t CAPACITY = 8192> class Hash_Additive3 : public Worker
{
private:
    AdditiveCell**  table;
    AdditiveCell full_list;
    AdditiveCell * free_list;
    const static HashedLongPoint MASK = AdditiveCell::MASK;
    const static HashedLongPoint A = ((HashedLongPoint)AdditiveCell::A) << 32;
    const static HashedLongPoint B = AdditiveCell::B;
    const static HashedLongPoint AM = (0 - A) & MASK;
    const static HashedLongPoint BM = (0 - (uint32_t)B) & MASK;

public:
    Hash_Additive3() : full_list(0, 0, 0), free_list(0)
    {
        table = new AdditiveCell*[CAPACITY];
        for (size_t i = 0; i < CAPACITY; i++) {
            table[i] = 0;
        }
        full_list.next = full_list.prev = &full_list;
    }

    ~Hash_Additive3()
    {
        reset();
        delete table;
    }

    AdditiveCell * allocate(HashedLongPoint position, int neighbours, bool live = false)
    {
        if (!free_list) {
            return new AdditiveCell(position, neighbours, live);
        }
        AdditiveCell * result = free_list;
        free_list = result->next;
        result->init(position, neighbours, live);
        return result;
    }

    void deallocate(AdditiveCell * cell)
    {
        cell->next = free_list;
        free_list = cell;
    }

    void reset()
    {
        for (size_t i = 0; i < CAPACITY; i++) {
            AdditiveCell* p = table[i];
            if (p) {
                table[i] = 0;
                while (p) {
                    AdditiveCell * q = p->table_next;
                    deallocate(p);
                    p = q;
                }
            }
        }
        full_list.next = full_list.prev = &full_list;
        while (free_list) {
            AdditiveCell * p = free_list->next;
            delete free_list;
            free_list = p;
        }
    }

    inline HashType hash(HashedLongPoint key) const
    {
        return (HashType)(hi(key) + lo(key));

    }

    size_t index(HashType h) const
    {
        return h & (CAPACITY - 1);
    }

    AdditiveCell* get(HashedLongPoint key) const
    {
        for (AdditiveCell* c = table[index(hash(key))]; c; c = c->table_next) {
            if (c->position == key) {
                return c;
            }
        }
        return 0;
    }

    void add_to_list(AdditiveCell *cell)
    {
        cell->next = full_list.next;
        cell->next->prev = cell;
        cell->prev = &full_list;
        full_list.next = cell;
    }

    void remove_from_list(AdditiveCell *cell)
    {
        cell->next->prev = cell->prev;
        cell->prev->next = cell->next;
    }

    void put(AdditiveCell* cell)
    {
        size_t ind = index(hash (cell->position));
        cell->table_next = table[ind];
        table[ind] = cell;
        add_to_list(cell);
    }

    void remove(AdditiveCell* cell)
    {
        size_t ind = index(hash (cell->position));
        if (table[ind] == cell) {
            table[ind] = cell->table_next;
            remove_from_list(cell);
            deallocate(cell);
            return;
        }
        for (AdditiveCell* c = table[ind]; c; c = c->table_next) {
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
        for (AdditiveCell* cell = full_list.next; cell != &full_list; cell = cell->next) {
            if (cell->live) {
                r->insert(cell->toPoint());
            }
        }
        return r;
    }

    void inc(HashedLongPoint w)
    {
        w &= MASK;
        AdditiveCell* c = get(w);
        if (c)
            c->inc();
        else
            put(allocate(w, 1));
    }

    void dec(HashedLongPoint w)
    {
        w &= MASK;
        AdditiveCell* c = get(w);
        if (!c->dec() && !c->live) {
            remove(c);
        }
    }

    void set(AdditiveCell* c)
    {
        LongPoint w = c->position;
        inc(w + AM + BM);
        inc(w + AM);
        inc(w + AM + B);
        inc(w + BM);
        inc(w + B);
        inc(w + A + BM);
        inc(w + A);
        inc(w + A + B);
        c->set();
    }

    void reset(AdditiveCell* c)
    {
        LongPoint w = c->position;
        dec(w + AM + BM);
        dec(w + AM);
        dec(w + AM + B);
        dec(w + BM);
        dec(w + B);
        dec(w + A + BM);
        dec(w + A);
        dec(w + A + B);
        if (c->neighbours == 0) {
            remove(c);
        }
        else {
            c->reset();
        }
    }

    void put(int x, int y)
    {
        HashedLongPoint w = AdditiveCell::encode(x, y);
        AdditiveCell* c = get(w);
        if (!c)
            put(c = allocate(w, 0));
        AdditiveCell* cell = c;
        set(c);
    }

    void step()
    {
        AdditiveCell *toSet = 0;
        AdditiveCell *toReset = 0;

        for (AdditiveCell* cell = full_list.next; cell != &full_list; cell = cell->next) {
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
        for (AdditiveCell* c = toSet; c; c = c->next_action) {
            set(c);
        }
        for (AdditiveCell* c = toReset; c;) {
            AdditiveCell* next_action = c->next_action;
            reset(c);
            c = next_action;
        }
    }
};

#endif // _HASH_ADDITIVE3_H
