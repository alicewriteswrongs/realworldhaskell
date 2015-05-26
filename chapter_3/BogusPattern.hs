data Fruit = Apple | Orange
    deriving (Show)
-- I added Show so we can look at it!

apple = "apple"
orange = "orange"


-- this is the correct thing! Careful with ya patterns
whichFruit :: [Char] -> Fruit
whichFruit f = case f of
                "apple"  -> Apple
                "orange" -> Orange
