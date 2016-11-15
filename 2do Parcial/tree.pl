insert(Num, empty, tree(Num, empty, empty)).
insert(Num, tree(Element, Left, Right), tree(Element, NewLeft, Right)):-
  Num < Element,
  insert(Num, Left, NewLeft).
insert(Num, tree(Element, Left, Right), tree(Element, Left, NewRight)):-
  insert(Num, Left, NewRight).
