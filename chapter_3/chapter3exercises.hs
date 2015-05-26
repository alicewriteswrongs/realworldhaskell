import Data.List
import Data.Ord

-- 1 our version of a length function

myLength :: Num a => [t] -> a
myLength (x:xs) = 1 + myLength xs
myLength [] = 0

-- 3 average of a list

listAverage :: Fractional a => [a] -> a
listAverage [] = 0
listAverage list = sum list / myLength list


-- 4 palindrome a list

palindrome :: [a] -> [a]
palindrome [] = []
palindrome list = list ++ myflip list 
    where   myflip (x:[]) = [x]
            myflip (x:xs) = myflip xs ++ [x]

-- 5 check if a list is a palindrome
-- can reuse the helper function from above

palindromeCheck :: Eq a => [a] -> Bool
palindromeCheck [] = True
palindromeCheck list
    | list == myflip list = True
    | otherwise           = False
    where   myflip (x:[]) = [x]
            myflip (x:xs) = myflip xs ++ [x]

-- 6 sort a list of lists by length of sublists
-- we're going to write a shitty quick sort real quick

listOfLists = [[1..4],[2..6],[1,3,4],[2..10]]

sortListOfLists :: [[a]] -> [[a]]
sortListOfLists list = sortBy (comparing length) list

-- 7 join list of lists with a separator value

myintersperse :: a -> [[a]] -> [a]
myintersperse _ [] = []
myintersperse x (y:ys) = y ++ [x] ++ myintersperse x ys

-- 8 find height of a binary tree, using the tree type we defined earlier

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

-- treeHeight :: Tree -> Num

-- 9 define a direction data type
data Direction = LeftTurn | RightTurn | Straight deriving (Show)

-- 10 a function which calculates this
type X = Float
type Y = Float
type Point = (X,Y)

findDirection :: (Point a, Direction d) => a -> a -> a -> d
findDirection a b c
    | (crossProduct a b c) > 0 = LeftTurn
    | (crossProduct a b c) < 0 = RightTurn
    | (crossProduct a b c) == 0 = Straight
    where crossProduct (x1,y1) (x2,y2) (x3,y3) = ((x2-x1)*(y3-y1)) - ((x3-y1)*(y2-y1))
