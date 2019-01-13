
insert([], X, [X]).
insert([H|T], X, Rez) :-
    X =< H,
    Rez = [X, H | T].
insert([H|T], X, [H|NT]) :-
    X > H,
    insert(T,X,NT).

insert_sort([], Acc, Acc).
insert_sort([H|T], Acc, Rez) :-
    insert(Acc, H, NAcc),
    insert_sort(T, NAcc, Rez).

ins(List, Rez) :-
    insert_sort(List, [], Rez).
