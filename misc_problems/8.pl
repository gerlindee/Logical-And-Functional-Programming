
% insert is a non-deterministic predicate that inserts an element in a list
% insert([1,2,3],7,Rez) => Rez = [7,1,2,3]
% insert([1,2,3],7,Rez) => Rez = [1,7,2,3]
% insert([1,2,3],7,Rez) => Rez = [1,2,7,3]
% insert([1,2,3],7,Rez) => Rez = [1,2,3,7]

insert([], E, [E]).
insert([H|T], E, R) :-
    R = [E,H|T].
insert([H|T], E, R) :-
    insert(T, E, L),
	R = [H|L].

permutations([], []).
permutations([H|T], R) :-
    permutations(T, RT),
    insert(RT, H, Rez),
    R = Rez.

combofK(_, 0, []).
combofK([H | T], K, R) :-
    K > 0,
    K1 is K - 1,
    combofK(T, K1, TR),
	R = [H | TR].
combofK([_ | T], K, R) :-
    K > 0,
    combofK(T, K, R).

aranjamente([], _, []).
aranjamente(L, K, R) :-
    combofK(L, K, R1),
    permutations(R1, R).

sumList([], Acc, Acc).
sumList([H|T], Acc, Res) :-
    NewAcc is H + Acc,
    sumList(T, NewAcc, Res).

prodList([], Acc, Acc).
prodList([H|T], Acc, Res) :-
    NewAcc is H * Acc,
    prodList(T, NewAcc, Res).

onesol(L, K, P, S, RL) :-
    aranjamente(L, K, RL),
    prodList(RL, 1, P),
    sumList(RL, 0, S).

allsols(L, K, P, S, R) :-
    findall(RL, onesol(L, K, P, S, RL), R).

