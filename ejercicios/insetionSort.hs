insertionSort [] = []
insertionSort (a:[]) = [a]
insertionSort (h:t) = let insert num [] = [num]
                          insert num (h:t) = if num > h
                                             then [h] ++ (insert num t)
                                             else [num] ++ [h] ++ t
                      in
                        insert h (insertionSort t)

insertS [] = []
insertS (h:[]) = [h]
insertS (h:t) = let lc x lista = [y | y<-lista, x >= y] ++ [x] ++ [y | y<-lista, x < y]
                in
                 lc h (insertS t)
