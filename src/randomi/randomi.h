#ifndef INCLUDED_RANDOMI_
#define INCLUDED_RANDOMI_

#include <iosfwd>
#include <random>

class Randomi
{
    unsigned d_seed;
    std::default_random_engine d_generator;
    std::uniform_int_distribution<int> d_distribution;

    public:
        Randomi(int low, int high);  // init seed
        int rnd();        // return random number

    private:
};

#endif
