#include "hash/hash.ih"

int main(int argc, char *argv[])
{
    for (int i = 0; i < argc; i++)
    {
        string args(argv[i]);
        Hash hash(args);
        cout << "\"Hash\": " << hash << "\n";
    }
}
