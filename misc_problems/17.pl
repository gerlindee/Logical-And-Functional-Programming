
getLen([], 0).
getLen([_|T], Len) :-
    getLen(T, NewLen),
    Len is NewLen + 1.

split([],[],[],_,_).
split([H|T], List1, List2, Len, Pos) :-
    Pos =< (Len div 2),
    NewPos is Pos + 1,
    split(T, NewList1, List2, Len, NewPos),
    List1 = [H|NewList1].
split([H|T], List1, List2, Len, Pos) :-
    Pos > (Len div 2),
    NewPos is Pos + 1,
    split(T, List1, NewList2, Len, NewPos),
    List2 = [H|NewList2].

division([],[]).
division(List, List1, List2) :-
    getLen(List, Len),
    split(List, List1, List2, Len, 1).

merge([],[],[]).
merge(List1,[],List1).
merge([],List2,List2).
merge([H1|T1],[H2|T2],Rez) :-
    H1 < H2,
    merge(T1, [H2|T2], NewRez),
    Rez = [H1|NewRez].
merge([H1|T1],[H2|T2],Rez) :-
    H1 > H2,
    merge([H1|T1],T2, NewRez),
    Rez = [H2|NewRez].
merge([H1|T1],[H2|T2],Rez) :-
    H1 =:= H2,
    merge(T1,T2,NewRez),
    Rez = [H1|NewRez].

merge_sort([], []).
merge_sort([H], [H]).
merge_sort(List, Rez) :-
    division(List, List1, List2),
    merge_sort(List1, NewRez1),
    merge_sort(List2, NewRez2),
    merge(NewRez1, NewRez2, Rez).
