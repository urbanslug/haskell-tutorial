-- This is from my doing the Haskell problems in haskell 99 problems.
-- from http://www.haskell.org/haskellwiki/99_questions/1_to_10

-- 1
myLast :: [a] -> a
myLast [] = error "Empty list"
myLast (x:[]) = x
myLast (_:xs) = myLast xs

-- 2
myButLast :: [a] -> a
myButLast [] = error "Empty list"
myButLast (x:[]) = x
myButLast (x:y:[]) = x
myButLast (_:xs) = myButLast xs
