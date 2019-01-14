
comb([], []).
comb([H|T],Rez) :-
    comb(T,Tres),
    Rez = [H|Tres].
comb([_|T],Rez) :-
    comb(T,Rez).

getLength([],0).
getLength([_|T], Len) :-
    getLength(T, NewLen),
    Len is NewLen + 1.

onesol(List, Rez) :-
    comb(List, Rez),
    getLength(Rez, Len),
    Len mod 2 =:= 0.

allsols(List, Rez) :-
    findall(Rs, onesol(List, Rs), Rez).
