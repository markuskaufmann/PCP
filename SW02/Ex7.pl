mult(_,0,0).
mult(0,_,0).
mult(0,0,0).
mult(Factor1, Factor2, Result)  :-
    Factor1 > 0,
    Factor2 > 0,
    X is Factor1 - 1,
    mult(X, Factor2, R),
    Result is R + Factor2.
