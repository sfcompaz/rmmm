#ifndef INCLUDED_RESULT_
#define INCLUDED_RESULT_


class Result
{
    public:
        enum Results
        {
            OPEN,           // pairing made, no result yet
            WIN1,           // player 1 wins
            WIN2,           // player 2 wins
            DRAW,           // draw
            DOUBLEZERO      // NOSHOW or arbitration
        };
        enum ResultFlag
        {
            NORESULT = 0,   // not (yet) played
            PLAYED,         // played to finish
            RESIGN,         // win by resignation
            TIED,           // agreed on draw
            TIMELOSS,       // win by loss on time
            BYE,            // win to opponent Bye
            FREE,           // did not play
            NOSHOW,         // win or loss by abence
            RULING          // win or loss by arbitration
        };

    private:
        int points1;        // details or wins in team tournament
        int points2;        // details or wins in team tournament
        Results results = OPEN;
        ResultFlag flag = NORESULT;

    public:
        Result();

    private:
};

#endif
