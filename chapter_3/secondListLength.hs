myLength2 :: Num a => [t] -> a
myLength2 [] = 0
myLength2 inList = sum $ map (\x -> 1) inList

main = do
    print $ myLength2 [1..10000]
