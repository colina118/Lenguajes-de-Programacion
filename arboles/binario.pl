insert(N, empty, node(N,empty,empty)).
insert(N, node(E,Left,Right), Sol):-
  N>=E,
  insert(N, Right, NewRight),
  balance(node(E, Left, NewRight), Sol).
insert(N, node(E,Left,Right), Sol):-
  N<E,
  insert(N, Left, NewLeft),
  balance(node(E, NewLeft, Right), Sol).

insertList([],Tree,Tree).
insertList([H|T],Tree,N):-insert(H,Tree,NewTree),insertList(T,NewTree,N).

inorder(empty,_).
inorder(node(A,L,R),List):-inorder(L,List),write(A),inorder(R,NewList).

postorder(empty,_).
postorder(node(A,L,R),List):-postorder(L,List),postorder(R,NewList),write(A).

height(empty, 0).
height(node(_, Left, Right), Sol):-
  height(Left, Lheight),
  height(Right, Rheight),
  Sol is max(Lheight, Rheight) + 1.

rightRotation(node(A, node(B, LeftB, RightB), C), node(B, LeftB, node(A, RightB, C))).
leftRotation(node(A, B, node(C, LeftC, RightC)), node(C, node(A, B, LeftC), RightC)).

leftRightRotation(node(A, L, R), N):-rightRotation(R, Sol), leftRotation(node(A, L, Sol), N).
rightLeftRotation(node(A, L, R), N):-leftRotation(L, Sol), rightRotation(node(A, Sol, R), N).

balance(empty, empty).

balance(node(A, L, R), Out):-
  height(L, LeftHeight),
  height(R, RightHeight),
  balance(node(A, L, R), RightHeight, LeftHeight, Out).

balance(Tree, RightHeight, LeftHeight, Tree):-
  RightHeight - LeftHeight < 2,
  LeftHeight - RightHeight < 2.

balance(node(A, L, node(AR, RL, RR)), RightHeight, LeftHeight, Sol):-
  RightHeight - LeftHeight >= 2,
  height(RL, HeightLeft),
  height(RR, HeightRight),
  HeightLeft - HeightRight >= 1,
  leftRightRotation(node(A, L, node(AR, RL, RR)), Sol).

balance(node(A, L, node(AR, RL, RR)), RightHeight, LeftHeight, Sol):-
  RightHeight - LeftHeight >= 2,
  leftRotation(node(A, L, node(AR, RL, RR)), Sol).

balance(node(A, node(AL, LL, LR), R), RightHeight, LeftHeight, Sol):-
  LeftHeight - RightHeight >= 2,
  height(AL, HeightLeft),
  height(LL, HeightRight),
  HeightRight - HeightLeft >= 1,
  rightLeftRotation(node(A, node(AL, LL, LR), R), Sol).

balance(node(A, node(AL, LL, LR), R), RightHeight, LeftHeight, Sol):-
  LeftHeight - RightHeight >= 2,
  rightRotation(node(A, node(AL, LL, LR), R), Sol).
