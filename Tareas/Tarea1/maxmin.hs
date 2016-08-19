listup = [(,)]
maxmin [] = 0
maxmin (a:[]) = a
maxmin lista = let mayor [] = 0
		   mayor (a:[]) = a
		   mayor (a:b:c) = let bigger (a,b) = if a>b 
				        	      then a 
				   		      else b 
				   in 
		 		    if c == [] 
		 		    then bigger (a,b) 
		   		    else mayor([bigger(a,b)]++c)
		   menor [] = 0
		   menor (a:[]) = a
		   menor(a:b:c) = let smaller (a,b) = if a<b
						      then a
						      else b
				  in 
				   if c == []
				   then smaller(a,b)
				   else menor([smaller(a,b)]++c)
		 in
		  if lista == []
		  then listup
		  else listup ++ [(mayor (head lista), menor (head lista))] 
							