maxymin listaa = let maxmin lista = let mayor [] = 0
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
                                   (mayor lista, menor lista)
                in
                 if listaa==[]
								 then []
								 else [maxmin(head listaa)]++maxymin(tail listaa)
