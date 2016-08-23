factCola (x, sol) = if (x == 1)
                 then sol
                 else factCola (x-1, sol*x)

fact 0 = 1
fact x = fact(x-1) x
         where fact x res
                | x == 0 = res
                | otherwise = fact (x-1) res*x

factc 0 sol = sol
factc 1 sol = sol
factc x sol = factc(x-1)(x*sol) 
