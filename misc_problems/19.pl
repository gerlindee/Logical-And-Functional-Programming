
% List = [2,5,3,4,10]
% k = 2
% P = 20
% [[2,10],[10,2],[5,4],[4,5]]

product([],1).
product([H|T], Rez) :-
    product(T, NewRez),
    Rez is H * NewRez.

insert([], E, [E]).
insert([H|T], E, Rez) :-
    Rez = [E,H|T].
insert([H|T], E, Rez) :-
    insert(T, E, L),
    Rez = [H|L].

perm([],[]).
perm([H|T], R) :-
    perm(T,RT),
    insert(RT,H,Rez),
    R = Rez.

comb(_,0,[]).
comb([H|T],K,R) :-
    K > 0,
    K1 is K - 1,
    comb(T,K1,RT),
    R = [H|RT].
comb([_|T],K,R) :-
    K > 0,
    comb(T,K,R).

aranj([],_,[]).
aranj(_,0,[]).
aranj(List, K, R) :-
    comb(List, K, RT),
    perm(RT, R).

onesol(List, K, P, Rez) :-
    aranj(List, K, Rez),
    product(Rez, P).

allsols(List, K, P, Rez) :-
    findall(Rs, onesol(List, K, P, Rs), Rez).

