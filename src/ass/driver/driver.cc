#include "ass/ass.ih"

int main(int argc, char *argv[])
{
    Ass ass;
    for (int i = 0; i < argc; ++i)
    {
        string args(argv[i]);
        ass.AddName(args);
    }
    cout << "{ \"Ass\": " << ass << " }\n";
    Ass ass2(ass);
    cout << "{ \"Ass2\": " << ass2 << " }\n";
}
