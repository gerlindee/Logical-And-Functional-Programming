sum_par_lin([],0).
sum_par_lin([H|T], Rez) :-
    number(H),
    H mod 2 =:= 1,
    sum_par_lin(T, Rez1),
    Rez is Rez1 + 0.
sum_par_lin([H|T], Rez) :-
    number(H),
    H mod 2 =:= 0,
    sum_par_lin(T, Rez1),
    Rez is Rez1 + H.
sum_par_lin([H|T], Rez) :-
    atom(H),
    sum_par_lin(T, Rez).

sum_par_nonlin([],0).
sum_par_nonlin([H|T], Rez) :-
    number(H),
    H mod 2 =:= 1,
    sum_par_nonlin(T, Rez1),
    Rez is Rez1 + 0.
sum_par_nonlin([H|T], Rez) :-
    number(H),
    H mod 2 =:= 0,
    sum_par_nonlin(T, Rez1),
    Rez is Rez1 + H.
sum_par_nonlin([H|T], Rez) :-
    atom(H),
    sum_par_nonlin(T, Rez).
sum_par_nonlin([H|T], Rez) :-
    is_list(H),
    sum_par_nonlin(H, Rez1),
    Rez2 is Rez1,
	  sum_par_nonlin(T, Rez3),
    Rez is Rez2 + Rez3.


    

