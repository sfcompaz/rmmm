#include "ass.ih"

Ass::Ass(Ass const &other)
:
    d_capacity(other.d_capacity),
    d_size(other.d_size),
    d_hashes(expand())
{
    for (size_t size = 0; size < other.d_size; ++size )
    {
        Hash *newhash = new Hash(other.d_hashes[size]->name());
       
        new (d_hashes + size) Hash *(newhash);
    }
}
