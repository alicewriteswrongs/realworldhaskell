myLast :: [a] -> a
myLast (x:xs) = 
    if null xs
    then x
    else myLast xs
