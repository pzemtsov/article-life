#ifndef _CELL_H
#define _CELL_H

class Cell
{
public:

    LongPoint position;
    size_t index;
    int neighbours;
    bool live;
    Cell * table_next;

    Cell(LongPoint position, int neighbours, bool live = false) : position(position), neighbours(neighbours), live(live), table_next(0)
    {}

    inline Point toPoint() const
    {
        return ::toPoint(position);
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

class ListedCell
{
public:

    LongPoint position;
    size_t index;
    int neighbours;
    bool live;
    ListedCell * table_next;
    ListedCell * next;
    ListedCell * prev;

    ListedCell(LongPoint position, int neighbours, bool live = false) : position(position), neighbours(neighbours), live(live), table_next(0), next(0), prev(0)
    {}

    void set(LongPoint position, int neighbours, bool live = false)
    {
        this->position = position;
        this->neighbours = neighbours;
        this->live = live;
    }

    inline Point toPoint() const
    {
        return ::toPoint(position);
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

class ActionCell
{
public:

    LongPoint position;
    size_t index;
    int neighbours;
    bool live;
    ActionCell * table_next;
    ActionCell * next;
    ActionCell * prev;
    ActionCell * next_action;

    ActionCell(LongPoint position, int neighbours, bool live = false) : position(position), neighbours(neighbours), live(live), table_next(0), next(0), prev(0), next_action(0)
    {}

    void set(LongPoint position, int neighbours, bool live = false)
    {
        this->position = position;
        this->neighbours = neighbours;
        this->live = live;
    }

    inline Point toPoint() const
    {
        return ::toPoint(position);
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

class HashCell
{
public:

    LongPoint position;
    HashType hash;
    int neighbours;
    bool live;
    HashCell * table_next;
    HashCell * next;
    HashCell * prev;
    HashCell * next_action;


    HashCell(LongPoint position, HashType hash, int neighbours, bool live = false) : position(position), hash (hash), neighbours(neighbours), live(live), table_next(0), next(0), prev(0), next_action(0)
    {}

    inline void init(LongPoint position, HashType hash, int neighbours, bool live = false)
    {
        this->position = position;
        this->hash = hash;
        this->neighbours = neighbours;
        this->live = live;
    }

    inline Point toPoint() const
    {
        return ::toPoint(position);
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



#endif // _CELL_H