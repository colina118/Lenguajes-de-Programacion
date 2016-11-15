myMapList(_, [], []).
myMapList(Goal, [H|T], [R|T2]):-
  Goal=..[Func|Params],
  append(Params, [H, R], NewParams),
  Pred=..[Func|NewParams],
  call(Pred),
  myMapList(Goal, T, T2), !.

succ(A, B):- B is A+1.
