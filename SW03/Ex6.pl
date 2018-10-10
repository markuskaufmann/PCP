% L = [_, _, _], mem(a, L), mem(b, L), mem(c, L), !.

% mem/2
mem(X, [X | _]).
mem(X, [_| Tail]) :- mem(X, Tail).
