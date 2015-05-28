
myLength :: Num a => [t] -> a
myLength (x:xs) = 1 + myLength xs
myLength [] = 0

main = do
    print $ myLength [1..10000]
