lastOne (y:ys)
    | null ys   = True
    | otherwise = False

lastButOne :: [a] -> a
lastButOne [] = error "empty list"
lastButOne [x] = error "too short"
lastButOne (x:xs) =
    if lastOne xs
    then x
    else lastButOne xs
