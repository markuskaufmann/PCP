
female(mary). female(liz). female(mia). female(tina). female(ann). female(sue).% all females
male(mike). male(jack). male(fred). male(tom). male(joe). male(jim). % all males
parent(mary, mia). parent(mary, fred). parent(mary, tina). % all childern of mary
parent(mike, mia). parent(mike, fred). parent(mike, tina). % all children of mike
parent(liz, tom). parent(liz, joe). % allchildern of liz
parent(jack, tom). parent(jack, joe). % all childern of jack
parent(mia, ann). % all childern of mia
parent(tina, sue). parent(tina, jim). % all childern of tina
parent(tom, sue). parent(tom, jim). % all childern of tom


mother(X, Y) :-
    female(X),
    parent(X, Y).

father(X, Y) :-
    male(X),
    parent(X, Y).

sibling(X, Y) :-
    mother(Z, X),
    mother(Z, Y).

grandmother(X, Y) :-
    mother(X, Z),
    parent(Z, Y).

grandfather(X, Y) :-
    father(X, Z),
    parent(Z, Y).

offspring(Y, X) :- parent(X, Y).
offspring(Y, X) :-
    parent(X, Z),
    offspring(Y, Z).



:- use_module(library(clpfd)).

sudoku(Rows) :-
    append(Rows, Vs), Vs ins 1..9,
    maplist(all_distinct, Rows),
    transpose(Rows, Columns),
    maplist(all_distinct, Columns),
    Rows = [A, B, C, D, E, F, G, H, I],
    blocks(A, B, C), blocks(D, E, F), blocks(G, H, I),
    maplist(label, Rows).

blocks([], [], []).
blocks([A, B, C|Bs1], [D, E, F|Bs2], [G, H, I|Bs3]) :-
    all_distinct([A, B, C, D, E, F, G, H, I]),
    blocks(Bs1, Bs2, Bs3).


:- use_module(library(http/http_client)).
:- use_module(library(http/http_json)).
:- use_module(library(http/json_convert)).

:- json_object
    relationship(problemKey:integer, relationship:atom, firstPerson:atom, secondPerson:atom),
    sudoku(problemKey:integer, sudoku:list),
    solution(solution:atomic, problemKey:integer),
    sudoku_solution(problemKey:integer, solution:list).


solve(relationship, Id) :-
    string_concat('http://localhost:16316/problem/relationship/', Id, Url),
    http_get(Url, JsonReply, []),
    json_to_prolog(JsonReply, relationship(ProblemKey, Relationship, FirstPerson, SecondPerson)),
    call_relationship(ProblemKey, Relationship, FirstPerson, SecondPerson).

solve(sudoku, Id) :-
    string_concat('http://localhost:16316/problem/sudoku/', Id, Url),
    http_get(Url, JsonReply, []),
    json_to_prolog(JsonReply, sudoku(ProblemKey, SudokuZeroed)),
    maplist(replace_zero, SudokuZeroed, Sudoku),
    Sudoku = [A, B, C, D, E, F, G, H, I],
    sudoku([A, B, C, D, E, F, G, H, I]),
    prolog_to_json(sudoku_solution(ProblemKey, Sudoku), Json),
    http_post('http://localhost:16316/problem/sudoku/', json(Json), _, []).

call_relationship(ProblemKey, Relationship, FirstPerson, SecondPerson) :-
    call(Relationship, FirstPerson, SecondPerson),
    prolog_to_json(solution(true, ProblemKey), Json),
    http_post('http://localhost:16316/problem/relationship/', json(Json), _, []).

call_relationship(ProblemKey, Relationship, FirstPerson, SecondPerson) :-
    \+ call(Relationship, FirstPerson, SecondPerson),
    prolog_to_json(solution(false, ProblemKey), Json),
    http_post('http://localhost:16316/problem/relationship/', json(Json), _, []).


% helper function replace/2

replace_zero(L1, L2) :-
	maplist(replace_help, L1, L2),
	!.
replace_help(0, _).
replace_help(X, X).
