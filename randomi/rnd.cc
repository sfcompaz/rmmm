#include "randomi.ih"

int Randomi::rnd()
{
    return d_distribution(d_generator);
}
