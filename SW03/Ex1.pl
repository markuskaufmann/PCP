fib_tr(N, F) :- fib_tr(N, 0, 1, F). % call accumulator
fib_tr(0, A, _, A).
fib_tr(N, A, B, F) :-
    N1 is N - 1,
    N1 >= 0,
    Sum is A + B,
    fib_tr(N1, B, Sum, F). % tail-recursive call

io_fib :-
    write("Gib eine Zahl ein: "),
    read(X),
    fib_tr(X, F),
    writef("Die %w. Fibonacci-Zahl ist %w", [X, F]).
