mayor [] = 0
mayor (a:[]) = a
mayor (a:b:c) = let bigger (a,b) = if a>b 
				   then a 
				   else b 
		in 
		 if c == [] 
		 then bigger (a,b) 
		 else mayor([bigger(a,b)]++c)