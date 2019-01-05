
remove_asc([], []).
remove_asc([H], [H]).
remove_asc([H1,H2], Rez) :-
    H1 < H2,
    Rez = [].
remove_asc([H1,H2|T], Rez) :-
    H1 >= H2, 
    remove_asc([H2|T], Rez1),
    Rez = [H1|Rez1].
remove_asc([H1,H2,H3|T], Rez) :-
    H1 < H2,
    H2 < H3,
    remove_asc([H2,H3|T],Rez1),
    Rez = Rez1.
remove_asc([H1,H2,H3|T], Rez) :-
    H1 < H2,
    H2 >= H3,
    remove_asc([H3|T],Rez1),
    Rez = Rez1.

remove_seq([], []).
remove_seq([H|T], Rez) :-
    number(H),
    remove_seq(T, Rez1),
    Rez = [H|Rez1].
remove_seq([H|T], Rez) :-
    atom(H),
    remove_seq(T, Rez1),
    Rez = [H|Rez1].
remove_seq([H|T], Rez) :-
    is_list(H),
    remove_asc(H, Rez1),
    remove_seq(T, Rez2),
    Rez = [Rez1 | Rez2].
