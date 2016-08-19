menor [] = 0
menor (a:[]) = a
menor (a:b:c) = let smaller (a,b) = if a<b 
				   then a 
				   else b 
		in 
		 if c == [] 
		 then smaller (a,b) 
		 else menor([smaller(a,b)]++c)