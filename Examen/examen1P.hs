fibonni 0 = 0;
fibonni n =  if n <= 2
             then 1
             else fibonni(n-1)+fibonni(n-2)


palindromo :: (Integral a) => a -> Integer
palindromo 1 = 9
palindromo n =
 let alto = (10^n) - 1
     bajo = 10^(n - 1)
     numeros = [alto,alto-1..bajo]
 in palindromo numeros numeros numeros 9
 where palindromo primNum segNum numeros n
         | null primNum = n
         | null segNum = palindromo (tail primNum) numeros numeros n
         | isPal (head primNum * head segNum) && (head primNum * head segNum) > n = palindromo primNum (tail segNum) numeros (head primNum * head segNum)
         | otherwise = palindromo primNum (tail segNum) numeros n



isPal n = if show n == reverse (show n)
         then True
         else False
