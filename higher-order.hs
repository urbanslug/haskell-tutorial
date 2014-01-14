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
