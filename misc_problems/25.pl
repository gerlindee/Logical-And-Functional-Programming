    


reverse([], Acc, Acc).
reverse([H|T], Acc, Rez) :-
    number(H),
    NewAcc = [H|Acc],
    reverse(T, NewAcc, Rez).
reverse([H|T], Acc, Rez) :-
    is_list(H),
    reverse(H, [], Rez1), 
    NewAcc = [Rez1|Acc],
    reverse(T, NewAcc, Rez).

    
