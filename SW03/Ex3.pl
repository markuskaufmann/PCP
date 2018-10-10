
% a) add_tail

add_tail(X,[],[X]).
add_tail(X, [Y | Tail], [Y | Tail1]):-
    add_tail(X, Tail ,Tail1).


% b) del

del([X | Tail], X, Tail).
del([Head | Tail], X, [Head | Tail1]) :-
    del(Tail, X, Tail1).


% c) mem_d

mem_d(X, L) :- del(L, X, _).


% d) reverse w/ accumulator

rev_acc([],A,A).
rev_acc([Head | Tail], A, R) :-
    rev_acc(Tail, [Head | A], R).


% e) rev(L, R)

rev(L, R) :- rev_acc(L, [], R).
