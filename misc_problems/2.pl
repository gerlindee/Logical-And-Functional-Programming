
insert_elem_on_pos([], Elem, 1, _, [Elem]).
insert_elem_on_pos([], _, Pos, _, Rez) :-
    Pos > 1,
    Rez = [].
insert_elem_on_pos([H|T], Elem, Pos, Idx, Rez) :-
    Idx =:= Pos, % there's no reason to go further through the list at this point => no recursive call
    Rez = [Elem,H|T].
insert_elem_on_pos([H|T], Elem, Pos, Idx, Rez) :-
    Idx =\= Pos,
    Idx1 is Idx + 1,
    insert_elem_on_pos(T, Elem, Pos, Idx1, Rez1),
    Rez = [H|Rez1].
