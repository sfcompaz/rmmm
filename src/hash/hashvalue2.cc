#include "hash.ih"

unsigned long Hash::Hashvalue(std::string const &name)
{
    return Hash::Hashvalue(name.c_str(), name.length());
}

