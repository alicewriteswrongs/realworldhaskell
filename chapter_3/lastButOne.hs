
lastButOne2 :: [a] -> a
lastButOne2 [] = error "empty list"
lastButOne2 (x:y:[]) = x
lastButOne2 (x:xs) = lastButOne2 xs
