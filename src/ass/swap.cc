#include "ass.ih"

void Ass::swap(Ass &other)
{
    char buffer[sizeof(Ass)];
    memcpy(buffer, this,   sizeof(Ass));
    memcpy(this,   &other, sizeof(Ass));
    memcpy(&other, buffer, sizeof(Ass));
}
