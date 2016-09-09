esDivisible x y = head $ filter (check [x..y]) [2..]
check list num = all(\x -> num `mod` x == 0)list


prime n = all(\z -> n `mod` z /= 0)[3,5.. ceiling (sqrt (fromIntegral n))]


nPrimo n = getPrimes !! (n-1)


getPrimes = filter isPrime[1..]

isPrime :: (Integral a) => a -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime 3 = True
isPrime n
  | n `mod` 2 == 0 = False
  | n `mod` 3 == 0 = False
  | otherwise = null [ x | x <- [2..n - 1], n `mod`x  == 0]
