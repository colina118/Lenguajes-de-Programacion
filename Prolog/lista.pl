inList(X, [X|_]).
inList(X, [_|T]):-inList(X,T).


position(X, [X|_], C, OUT):- OUT is C.
position(X, [_|T], C, OUT):- position(X,T,C+1,OUT).

natural(0, 0).
natural(suc(X), N):-natural(X, S), N is S+1.

fibonacci(0,0,1).
fibonacci(A,B,C):-fibonacci(B,C,A+B), A is B, B is C.

dlength([],0).
dlength([_|T],Size):-dlength(T,S),Size is S+1.

isLost([],false).
isLost([H|[]],H).
isLost([_|T],S):-isLost(T,S).

myAppend([], L, [L]).
myAppend([H|T],L,[H|R]):-myAppend(T,L,R).

delete(_,[],[]).
delete(X,[X|T],Sol):-delete(X,T,Sol).
delete(X,[H|T],[H|T2]):-delete(X,T,T2).
