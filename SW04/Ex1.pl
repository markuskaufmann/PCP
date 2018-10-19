:- use_module(library(clpr)).

% a) error: out of global stack (eventually), da Endlosrekursion

% b) Das CSP wird mittels CLP so versucht zu lösen, dass für ein
% eingegebenes F ein korrespondierendes N gefunden wird.
% Ist F keine Fibonacci-Zahl, findet Prolog keine
% Lösung für F = F1+F2 -> F=0, F=1 (base case). Dies wird aber
% ausprobiert, bis der Stack voll ist.

% c) Für N eine Obergrenze setzen -> kalkulierter Abbruch des Programms

fib_clp(N, F) :- { N = 0, F = 0 }.
fib_clp(N, F) :- { N = 1, F = 1 }.
fib_clp(N, F) :-
 { N >= 2, F = F1+F2, N1 = N-1, N2 = N-2 },
 fib_clp(N1, F1),
 fib_clp(N2, F2).
