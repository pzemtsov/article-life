#include <iostream>
#include <stdint.h>
#include <typeinfo>
#include <nmmintrin.h>

#include "timer.h"

#include "defs.h"
#include "hash_longpoint.h"
#include "hash2.h"
#include "hash5.h"
#include "hash6.h"
#include "hash7.h"
#include "hash_homemade.h"
#include "hash_homemade2.h"
#include "hash_homemade3.h"
#include "hash_homemade5.h"
#include "hash_homemade7.h"
#include "hash_additive.h"
#include "hash_additive2.h"
#include "hash_additive3.h"

class Hash_Reference : public Worker
{
private:
    std::unordered_set<Point, PointHash> field;
    std::unordered_map<Point, int, PointHash> counts;

public:

    Hash_Reference(size_t hash_size = 8192) : field(hash_size), counts(hash_size)
    {}

    void reset()
    {
        field.clear();
        counts.clear();
    }

    void put(int x, int y)
    {
        set(Point(x, y));
    }

    std::unordered_set<Point, PointHash> * get() const
    {
        return new std::unordered_set<Point, PointHash>(field);
    }

private:
    void inc(Point w)
    {
        ++ counts[w];
    }

    void dec(Point w)
    {
        if (!--counts[w]) {
            counts.erase(w);
        }
    }

    void set(Point w)
    {
        for (Point p : w.neighbours()) {
            inc(p);
        }
        field.insert(w);
    }

    void reset(Point w)
    {
        for (Point p : w.neighbours()) {
            dec(p);
        }
        field.erase(w);
    }


public:
    void step()
    {
        std::vector<Point> toReset;
        std::vector<Point> toSet;
        for (Point w : field) {
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
        for (Point w : toSet) {
            set(w);
        }
        for (Point w : toReset) {
            reset(w);
        }
    }
};


void put (Worker &w, const char * p[])
{
    for (size_t y = 0; p[y]; y++) {
        for (size_t x = 0; p[y][x]; x++) {
            if (p[y][x] == '#') {
                w.put((int)x, (int)y);
            }
        }
    }
}

static const char* ACORN [] = {
        "##  ###",
        ":::#:::",
        ":#",
        0
};

static const char* GUN[] = {
        "                        #             ",
        "                      # #             ",
        "            ##      ##            ##",
        "           #   #    ##            ##",
        "##        #     #   ##",
        "##        #   # ##    # #",
        "          #     #       #",
        "           #   #",
        "            ##",
        0
};

void dump(const std::unordered_set<Point, PointHash> & s)
{
    for (auto p : s) {
        std::cout << "(" << p.x << "," << p.y << ") ";
    }
    std::cout << "\n";
}

void test(Worker &w0, Worker &w, int K)
{
    put(w0, ACORN);
    put(w, ACORN);

    for (int i = 0; i < K; i++) {
        std::unordered_set<Point, PointHash> *set0 = w0.get();
        std::unordered_set<Point, PointHash> *set1 = w.get();
        if (*set0 != *set1) {
            std::cout << "Not equals " << " at " << i << "\n";
            std::cout << "set0: ";
            dump(*set0);
            std::cout << "set1: ";
            dump(*set1);
            std::unordered_set<Point, PointHash> a(*set0);
            for (Point p : *set1) a.erase(p);
            std::cout << "set0-set1: ";
            dump(a);
            std::unordered_set<Point, PointHash> b(*set1);
            for (Point p : *set0) b.erase(p);
            std::cout << "set1-set0: ";
            dump(b);
            exit(1);
        }
        delete set0;
        delete set1;
        w0.step();
        w.step();
    }
}

void measure (Worker &w)
{
    int K = 10000;
    
    printf("%30s: time for %5d:", typeid (w).name(), K);

    uint64_t t = 0;
    for (int n = 0; n < 3; n++) {
        w.reset();
        put(w, ACORN);
        uint64_t t1 = currentTimeMillis();
        for (int i = 0; i < K; i++) {
            w.step();
        }
        uint64_t t2 = currentTimeMillis();
        t = t2 - t1;
        printf(" %5d", t);
    }
    printf(": %6.1f frames/sec\n", K * 1000.0 / t);
}

class LongPointHash1
{
public:
    HashType operator() (LongPoint p) const
    {
        return hi(p) * 3 + lo(p) * 5;
    }
};

class LongPointHash3
{
public:
    HashType operator() (LongPoint p) const
    {
        return hi(p) * 11 + lo(p) * 17;
    }
};

class LongPointHash4
{
public:
    HashType operator() (LongPoint p) const
    {
        return hi(p) * 1735499 + lo(p) * 7436369;
    }
};

class LongPointHash5
{
public:
    HashType operator() (LongPoint p) const
    {
        uint64_t x = p * 541725397157L;
        return (HashType)(lo(x) ^ hi(x));
    }
};

class LongPointHash6
{
public:
    HashType operator() (LongPoint p) const
    {
        return (HashType)(p % 946840871);
    }
};

class LongPointHash7
{
public:
    HashType operator() (LongPoint p) const
    {
        return (HashType)~_mm_crc32_u64(~(uint64_t)0, p);
    }
};

void test(Worker &w)
{
    Hash_Reference h;
//    test(h, w, 100);
    measure(w);
}

void test_gun(Worker &w)
{
    int N = 10000000;
    int K = 10000;
    put(w, GUN);

    uint64_t total = 0;
    for (int step = 0; step < N;) {
        uint64_t t1 = currentTimeMillis();
        for (int i = 0; i < K; i++, step++) {
            w.step();

        }
        uint64_t t2 = currentTimeMillis();
        uint64_t t = t2 - t1;
        total += t;
        size_t size = w.size();
        printf("%8d: %lld; total: %lld; size=%d; ms/elem=%f\n",
            step, t, total, size, (double)t / size);
        fflush(stdout);
    }
}

int main()
{
#define TEST(X) do { X x; test (x);} while (0)
#define TEST2(X,n) do { X x (n); test (x); } while (0)
#define TEST_GUN(X) do { X x; test_gun (x);} while (0)

#define T(a,b) <a,b>

    TEST(Hash_Reference);
    TEST(Hash_LongPoint<>);
    TEST(Hash_LongPoint<LongPointHash1>);
    TEST(Hash_LongPoint<LongPointHash3>);
    TEST(Hash_LongPoint<LongPointHash4>);
    TEST(Hash_LongPoint<LongPointHash5>);
    TEST(Hash_LongPoint<LongPointHash6>);
    TEST(Hash_LongPoint<LongPointHash7>);

    TEST(Hash2<>);
    TEST(Hash2<LongPointHash3>);
    TEST(Hash2<LongPointHash6>);

    TEST(Hash5<>);
    TEST(Hash5<LongPointHash3>);
    TEST(Hash5<LongPointHash6>);

    TEST(Hash6<>);
    TEST(Hash6<LongPointHash3>);
    TEST(Hash6<LongPointHash6>);

    TEST2(Hash6<>, 256 * 1024);
    TEST2(Hash6<LongPointHash3>, 256 * 1024);
    TEST2(Hash6<LongPointHash6>, 256 * 1024);

    TEST(Hash7<>);
    TEST(Hash7<LongPointHash3>);
    TEST(Hash7<LongPointHash6>);

    TEST(Hash_HomeMade<>);
    TEST(Hash_HomeMade<LongPointHash3>);
    TEST(Hash_HomeMade<LongPointHash6>);

    TEST(Hash_HomeMade2<>);
    TEST(Hash_HomeMade2<LongPointHash3>);
    TEST(Hash_HomeMade2<LongPointHash6>);

    TEST(Hash_HomeMade3<>);
    TEST(Hash_HomeMade3<LongPointHash3>);
    TEST(Hash_HomeMade3<LongPointHash6>);

    TEST(Hash_HomeMade3 T(std::hash<LongPoint>, 256 * 1024));
    TEST(Hash_HomeMade3 T(LongPointHash3, 256 * 1024));
    TEST(Hash_HomeMade3 T(LongPointHash6, 256 * 1024));

    TEST(Hash_HomeMade5 T(std::hash<LongPoint>, 256 * 1024));
    TEST(Hash_HomeMade5 T(LongPointHash3, 256 * 1024));
    TEST(Hash_HomeMade5 T(LongPointHash6, 256 * 1024));

    TEST(Hash_HomeMade7 T(std::hash<LongPoint>, 256 * 1024));
    TEST(Hash_HomeMade7 T(LongPointHash1, 256 * 1024));
    TEST(Hash_HomeMade7 T(LongPointHash3, 256 * 1024));
    TEST(Hash_HomeMade7 T(LongPointHash4, 256 * 1024));
    TEST(Hash_HomeMade7 T(LongPointHash5, 256 * 1024));
    TEST(Hash_HomeMade7 T(LongPointHash6, 256 * 1024));
    TEST(Hash_HomeMade7 T(LongPointHash7, 256 * 1024));

    TEST(Hash_Additive<256 * 1024>);
    TEST(Hash_Additive2<256 * 1024>);
    TEST(Hash_Additive3<256 * 1024>);

    TEST_GUN(Hash_Additive<2 * 1024 * 1024>);

    return 0;
}
