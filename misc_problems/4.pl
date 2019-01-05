
sum_acc([], Acc, Rez) :-
    Rez is Acc.
sum_acc([H|T], Acc, Rez) :-
    NewAcc is Acc + H,
    sum_acc(T, NewAcc, Rez1),
    Rez is Rez1.
