#include "hash.ih"

Hash::Hash(std::string const &name)
:
    d_name(name),
    d_value(Hashvalue(name))
{}
