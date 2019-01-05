

inv_numar(0, Inv, Rez) :-
    Rez is Inv.
inv_numar(Nr, Inv, Rez) :-
    Nr > 0,
    NewInv is Inv * 10 + Nr mod 10,
    NewNr is Nr div 10,
    inv_numar(NewNr, NewInv, Rez).
	% Rez = RT.

remove_palindromes([], []).
remove_palindromes([H|T], Rez) :-
    inv_numar(H, 0, Inv),
    Inv =\= H,
    remove_palindromes(T, Rez1),
    Rez = [H|Rez1].
remove_palindromes([H|T],Rez) :-
    inv_numar(H, 0, Inv),
    Inv =:= H,
    remove_palindromes(T, Rez1),
    Rez = Rez1.

remove([], []).
remove([H|T], Rez) :-
    number(H),
    inv_numar(H, 0, Inv),
    Inv =\= H,
    remove(T, Rez1),
    Rez = [H|Rez1].
remove([H|T], Rez) :-
    number(H),
    inv_numar(H, 0, Inv),
    Inv =:= H,
    remove(T, Rez1),
    Rez = Rez1.
remove([H|T], Rez) :-
    is_list(H),
    remove_palindromes(H, Rez1),
    remove(T, Rez2),
    Rez = [Rez1 | Rez2].
