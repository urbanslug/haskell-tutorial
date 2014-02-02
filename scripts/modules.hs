import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = leanth . nub