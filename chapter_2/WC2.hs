-- first RWH exercise
-- modified to count characters in the file

main = interact wordCount
    where wordCount input = show (length input) ++ "\n"
