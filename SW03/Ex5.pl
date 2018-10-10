% green cut

warn(T) :-
    T < 80,
    write('Temperatur ok').

warn(T) :-
    T < 100,
    T >= 80,
    write('Temperatur sehr warm').

warn(T) :-
    T >= 100,
    write('Temperatur zu heiss').

