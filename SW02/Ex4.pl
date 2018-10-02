n(red, yellow).
n(yellow, red).
n(red, green).
n(green, red).
n(yellow, green).
n(green, yellow).

color(LU, NW, OW, SZ, UR, ZG) :-
    UR = yellow,
    SZ = red,
    n(LU, SZ),
    n(LU, NW),
    n(LU, OW),
    n(LU, ZG),
    n(NW, OW),
    n(NW, UR),
    n(OW, UR),
    n(ZG, SZ),
    n(SZ, NW),
    n(SZ, UR).
