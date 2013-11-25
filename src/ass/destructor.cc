#include "ass.ih"

Ass::~Ass()
{
    if (d_capacity == 0)
        return;
    for (size_t size = 0; size < d_size; ++size)
        delete d_hashes[size];
    operator delete(d_hashes);
}
