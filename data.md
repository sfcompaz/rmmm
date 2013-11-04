Player
======
id
number
egf (-> egf.id)

Pair
====
id
player1
player2 (or bye)
cost (weighted value, e.g. color, club, country, points, SOS)

Pairing
=======
id
pair (pair.id)
round (round.id)
board

Result
======
id
pair (-> pair.id)
results (enum: player1, player2, draw, doublezero)
flags (R, Bye, Noshow1, Noshow2)
datetime

Round
=====
id
pairings (linked list)
location
datetime

Rules
=====
SOSformula   (rules for Bye, R)
SODOSformula


