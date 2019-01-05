
% Inv = accumulator / variabilă colectoare
inverse_num(0, Inv, Rez) :-
    Rez is Inv.
inverse_num(Nr, Inv, Rez) :-
    NewInv is Inv * 10 + Nr mod 10,
    NewNr is Nr div 10,
    inverse_num(NewNr, NewInv, Rez).
	% Rez = RT.
