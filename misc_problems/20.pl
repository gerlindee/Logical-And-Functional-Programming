
replace([],[]).
replace([H|T], Rez) :-
    number(H),
    H mod 2 =:= 0,
    H1 is H+1,
    replace(T, Rez1),
    Rez = [H1|Rez1].
replace([H|T], Rez) :-
    number(H),
    H mod 2 =\= 0,
    replace(T, Rez1),
	Rez = [H|Rez1].
replace([H|T], Rez) :-
    atom(H),
    replace(T, Rez1),
    Rez = [H|Rez1].
replace([H|T], Rez) :-
    is_list(H),
    replace(H, Rez1),
    replace(T, Rez2),
    Rez = [Rez1 | Rez2].
