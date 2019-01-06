
allSubsets([], []).
allSubsets([H|T], [H|TRes]) :-
    allSubsets(T, TRes).
allSubsets([_ | T], Res) :-
    allSubsets(T, Res).

allsols(L, Res) :-
    findall(Rs, allSubsets(L, Rs), Res).
