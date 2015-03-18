
data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList (x:xs) = Cons x (fromList xs)
fromList [] = Nil

-- convert back to normie list type

--fromWeird :: List a -> [a]
fromWeird (Cons a list) = a:fromWeird list
fromWeird Nil = []
