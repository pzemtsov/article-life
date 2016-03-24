#ifndef _VALUE_H
#define _VALUE_H

class Value
{
public:

    int count;
    bool live;

    Value(int value, bool present) : count(value), live(present)
    {}

    Value(int value) : count(value), live(false)
    {}

    Value() : count(0), live(false)
    {}

    void inc()
    {
        ++count;
    }

    bool dec()
    {
        return --count != 0;
    }

    void set()
    {
        live = true;
    }

    void reset()
    {
        live = false;
    }
};

#endif // _VALUE_H
