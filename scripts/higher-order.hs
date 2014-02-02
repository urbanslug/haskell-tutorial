--zipWith'
zipWith' :: (a -> b-> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
--zipWith' f xs ys = [f x y |x<-xs, y <- ys]

-- flip'
flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f x y = f y x

-- map'
map' :: (a -> b) -> [a] -> [b]
map' f xs = [f x | x <- xs]

-- filter'
filter' :: (Eq a) => (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x = x: filter' p xs
  | otherwise = filter' p xs


-- folds
-- foldl
eleme' :: (Eq a) => a -> [a] -> Bool
eleme' y ys = foldl (\acc x -> if x == y then True else acc) acc ys

-- sum'
sume' :: (Num a) => [a] -> a
sume' xs = foldl (+3) 0

-- foldl'
foldl' f z []     = z
foldl' f z (x:xs) = foldl f (f z x) xs
