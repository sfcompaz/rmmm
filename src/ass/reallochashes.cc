#include "ass.ih"

void Ass::reallocHashes()
{
    Hash **newhashes = expand();

    memcpy(newhashes, d_hashes, d_size * sizeof(Hash *));

    operator delete(d_hashes);
    d_hashes = newhashes;
}
