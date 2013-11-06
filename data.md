Player
======
id
number
egf (-> egf.id)
startpoints (MacMahon)
active (enum: playing, not playing, reserve)
round list (availability per round)

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
extra (handicap, time limits)
board
event list
result

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
pairing list
event list
datetime

Poule
=====
id
name
criteria (strength, availability)
player list
location list
board list

Rules
=====
SOSformula   (rules for Bye, R)
SODOSformula
Time rules (e.g. longer time on higher boards)
Round rules (commitment per round for top group)
MacMahon rules (bar, list ratings/macmahon points)

Location
========
Address, venue, room
Priority
board list

Event
=====
Location
Datetime
Endtime

Contact
=======
Name
Address
Phone
e-mail

Tournament
==========
contact list
player list
location list
round list
rules list
poule list
datetime list


