#include "ass.ih"

void Ass::AddName(string const &name)
{
    if (d_size == d_capacity)
    {
        d_capacity <<= 1;
        reallocHashes();
    }
    
    Hash *newhash = new Hash(name);
        
    new (d_hashes + d_size++) Hash *(newhash);
}
