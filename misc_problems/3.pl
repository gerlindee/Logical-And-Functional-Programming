
insert_on_mult([], _, Pos, _, Rez) :-
    Pos > 1,
    Rez = [].
insert_on_mult([], Elem, 1, _, [Elem]).
insert_on_mult([H|T], Elem, Pos, Idx, Rez) :-
    Idx mod Pos =:= 0,
    Idx1 is Idx + 1,
    insert_on_mult(T, Elem, Pos, Idx1, Rez1),
    Rez = [Elem,H|Rez1].
insert_on_mult([H|T], Elem, Pos, Idx, Rez) :-
    Idx mod Pos =\= 0,
    Idx1 is Idx + 1,
    insert_on_mult(T, Elem, Pos, Idx1, Rez1),
    Rez = [H|Rez1].
