
% a)
% Lösen Sie mit Hilfe von CLP in Prolog das folgende Rätsel: "Die Tochter ist 15 Jahre alt, die Mutter
% dreimal so alt. In wie vielen Jahren wird die Mutter nur noch doppelt
% so alt sein wie ihre Tochter?"

:- use_module(library(clpr)).

% { T=15, M=3*T, M+X=2*(T+X) }.

% b) Zahlenrätsel DONALD + GERALD = ROBERT

:- use_module(library(clpfd)).

% Analog zu den Folien
donald_gerald_robert([D,O,N,A,L,D] + [G,E,R,A,L,D] = [R,O,B,E,R,T]) :-
    Vars = [D, O, N, A, L, G, E, R, B, T],
    Vars ins 0..9,
    all_distinct(Vars),
    D*100000 + O*10000 + N*1000 + A*100 + L*10 + D +
    G*100000 + E*10000 + R*1000 + A*100 + L*10 + D #=
    R*100000 + O*10000 + B*1000 + E*100 + R*10 + T,
    D #\= 0, G #\= 0, R #\= 0,
    label(Vars).
