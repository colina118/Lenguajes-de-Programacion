fibonacci(0, 1).
fibonacci(1, 1).
fibonacci(X, F):- X>1, X1 is X-1, X2 is X-2, fibonacci(X1, A), fibonacci(X2, B), F is A+B.

fiboWrite(0, _).
fiboWrite(X, F):-fibonacci(X, S), X1 is X-1, fiboWrite(X1, F), write(S), write(" ").

%X, Y, Z son izquierda, centro y derecha.
hanoi(1,X,Y,_):-write('Mueve el disco de '), write(X), write(' a '), write(Y), nl.
hanoi(N,X,Y,Z):- N>1, M is N-1, hanoi(M,X,Z,Y), hanoi(1,X,Y,_), hanoi(M,Z,Y,X).
