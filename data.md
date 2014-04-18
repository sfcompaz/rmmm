Board
=====
- id
- number
- room

Player
======
- id (md5sum)
- name (displayName)
- number
- startpoints (MacMahon)
- previous (multi-tournament or playoff)
- active (enum: playing, not playing, reserve)
- round list (availability per round)

Egf
===
- PIN (number egf) (EgdPin)
- Player (id)
- Grade (GoLevel)
- rating (Rating)
- name (FirstName Surname) | AsianName
- country (Country)
- club (Club)
- picture
- ... getEgf(id)

Pair
====
- id
- player1
- player2 (or bye)
- cost (weighted value, e.g. color, club, country, points, SOS)

Pairing
=======
- id
- pair (pair.id)
- round (round.id)
- extra (handicap, time limits)
- board
- event list
- result

Result
======
- id
- pair (-> pair.id)
- results (enum: player1, player2, draw, doublezero)
- flags (R, Bye, Noshow1, Noshow2)
- datetime

Round
=====
- id
- pair list
- event list
- datetime

Poule
=====
- id
- name
- criteria (strength, availability)
- player list
- location list
- board list

Rules
=====
- SOSformula   (rules for Bye, R)
- SODOSformula
- Points rules (2-0, 1-1, 3-0)
- Tiebreaker order (NOW (Team), SOS-2, SOS-1, SOS, SODOS, SOSOS, ROS(CUSS), IROS).
- Komi
- Handicap
- Time rules (e.g. longer time on higher boards)
- Round rules (commitment per round for top group)
- MacMahon rules (bar, list ratings/macmahon points)

Duration
========
- Start time (datetime)
- End time (datetime)

Location
========
- id
- Name
- Address, venue, room
- Priority
- board list

Event
=====
- Location
- Duration

Contact
=======
- id
- Name
- Address
- Phone
- e-mail
- Player (id)

Tournament
==========
- contact list
- player list
- location list
- round list
- rules list
- poule list
- datetime list


