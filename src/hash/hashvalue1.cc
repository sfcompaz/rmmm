#include "hash.ih"

unsigned long Hash::Hashvalue(char const *name, size_t len)
{
    ulong h = 0, g;
	size_t i;
	
    for (i = 0; i < len; i++)  {
        h =  (h << 4)  + name[i];
        if ((g = (h & 0xF0000000))) {
            h = h ^ (g >> 24);
            h = h ^ g;
        }
    }
    return h;
}
