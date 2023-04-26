# Merry w Bag End

Rozwiązanie zadania 'Merry w Bag End' w języku PDDL
 
## Opis

### Pomóż Merry'emu wydostać się z piwnic pod Bag End!

Merry błąkając się po piwnicach Bag End wpadł w zapadnię mającą powstrzymać nieproszonych gości i wylądował w piwnicy o planie narysowanym poniżej. Niestety, w piwnicy snują się jakieś nieprzyjemne opary i utrudniają Merryemu myślenie. Pomóż mu wrócić do słonecznego świata! Merry musi:

1. odblokować klapę w suficie rozwiązując łamigłówkę, znajdującą się w pomieszczeniu z `A`;
2. dotrzeć do pomieszczenia z drabiną (`G`).


## Kompilacja

`fast-downward.py domain.pddl problem.pddl --search "astar(blind())"`

## Plan

W pliku `sas_plan` znajduje się gotowy plan wytworzony przez powyższe polecenie
