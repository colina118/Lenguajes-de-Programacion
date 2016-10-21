father(terach, nachor).
father(terach, haran).
father(haran, lot).
father(haran, mismcah).
father(haran, yiscah).
father(abraham, isaac).
father(tare, sarah).
mother(sarah, isaac).
male(terach).
male(tare).
male(haran).
male(abraham).
male(nachor).
male(isaac).
male(lot).
female(sarah).
female(milcah).
female(yiscah).
son(X,Y):-father(Y,X), male(X).
son(X,Y):-mother(Y,X), male(X).
grandfather(X,Y):-father(X,Z), father(Z,Y), male(X).
grandfather(X,Y):-father(X,Z), mother(Z,Y), male(X).
parent(X,Y):-father(X,Y).
parent(X,Y):-mother(X,Y).
grandParent(X,Y):-parent(X,Z), parent(Z,Y).
brother(X,Y):-parent(Z,X), parent(Z,Y), X \= Y.
ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):-parent(X,Z), ancestor(Z,Y).
