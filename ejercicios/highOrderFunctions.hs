operacion _ [] _ = []
operacion _ _ [] = []
operacion f (hx:tx) (hy:ty) = [f hx hy] ++ operacion f tx ty

encuentra _ [] = []
encuentra f (hx:tx) = if f hx
                      then [hx] ++ encuentra f tx
                      else encuentra f tx

find f [] = []
find f (hx:tx)
    |f hx = hx:find f tx
    |otherwise = find f tx

divisible _ [] = 0
divisible num lista = div num lista 0
                      where div num' lista' res'
                             |null lista' = res'
                             |mod (head lista') num' == 0 && (head lista') > res' = div num' (tail lista') (head lista')
                             |otherwise = div num' (tail lista') res'
