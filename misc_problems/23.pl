
remove([],_,_,[]).
remove([_|T], Idx, Pos, Rez) :-
    Idx =:= Pos,
    NewIdx is Idx + 1,
    NewPos is Pos * 2,
    remove(T, NewIdx, NewPos, NewRez),
    Rez = NewRez.
remove([H|T], Idx, Pos, Rez) :-
    Idx =\= Pos,
    NewIdx is Idx + 1,
    remove(T, NewIdx, Pos, NewRez),
    Rez = [H|NewRez].
