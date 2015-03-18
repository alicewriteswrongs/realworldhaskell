
data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)


data Tree2 a = Node2 a (Maybe (Tree2 a)) (Maybe (Tree2 a))
            deriving (Show)
