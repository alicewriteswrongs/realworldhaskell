
myNot :: Bool -> Bool
myNot True  = False
myNot False = True

sumList :: Num a => [a] -> a
sumList (x:xs) = x + sumList xs
sumList [] = 0

third :: (a,a1,a2) -> a2
third (a,b,c) = c

-- ohhh type signatures are lovely
-- we can look inside a type with pattern matching as much as we
-- care to


