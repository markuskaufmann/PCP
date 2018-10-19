
set_difference([],_,[]).

set_difference([Head | Set1], Set2, [Head | SetDifference]) :-
    \+ member(Head, Set2),
    set_difference(Set1, Set2, SetDifference).

set_difference([Head | Set1], Set2, SetDifference) :-
    member(Head, Set2),
    set_difference(Set1, Set2, SetDifference).

