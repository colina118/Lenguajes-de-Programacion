fibonacci 0 = 0;
fibonacci n =  if n <= 2
             then 1
             else fibonacci(n-1)+fibonacci(n-2)



listPal =  [x | x <- [100..999]]

isPal n = if show n == reverse (show n)
          then True
          else False
