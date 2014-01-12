-- two conditions
lucky :: ( Integral a ) => a -> String
lucky 7 = "LUCKY NUMBER 7"
lucky x = "Sorry you're out of luck, pal!"

-- factorial recursively
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = x * factorial (x-1)

-- add vectors
addVectors :: (Num a) => ( a , a ) -> (a , a ) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1+x2, y1 + y2)

-- head'
head' :: [a] -> a
head' [] = error "Empty lists have no head"
head'  (x:_ ) = x

--tell
tell ::(Show a) => [a] -> String
tell [] = "This sis an empty list"
tell (x:[]) = "This list has one element " ++ show x
tell (x:y:[]) = "Two elements " ++ show x ++ " and " ++ show y
tell (x:y:_) = "Long list but first two are " ++ show x ++ " and " ++ show y

-- length'
length' :: (Integral b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- sum'
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- case head
head'' :: [a] -> a
head'' list = case list of [] -> error "Empty lists have no head"
                           (x:_) -> x


-- describe lists. Whereas pattern matching on function parameters can only be done when defining functions, case expressions can be used pretty much anywhere.
describeList::[a] -> String
describeList list = "The list is " ++ case list of [] -> "empty."
						   [x] -> "singleton."
						   others -> "a longer list."

-- maximum (recursion)
maximum'' :: (Ord a) => [a] -> a
maximum'' [] = error "Empty list no maximum"
maximum'' [x] = x
maximum'' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = maximum'' xs

-- maximum using max.
-- max takes to members of the ord typeclass and return the greater of the two.
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Empty lists have no maximum"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

-- replicate, my own 
-- bug doesn't check for < 0
replicate' :: (Ord b, Integral b) => b -> a -> [a]
replicate' 0 _ = []
replicate' x y = y : replicate' (x-1) y

-- replicate from the book
replicate'' :: (Num i, Ord i) => i -> a -> [a]
replicate'' n x
  | n <= 0 = []
  | otherwise = x:replicate'' (n-1) x

-- take
take' :: (Integral a) => a -> [b] -> [b]
take' x _
  | x <= 0 = []
take' _ [] = []
take' x (h:hs) = h:take' (x-1) hs

-- reverse'
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- repeat'
repeat' :: a -> [a]
repeat' x = x:repeat' x

-- zip
zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

-- elem
elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
  | a == x = True
  | otherwise = a `elem'` xs

-- quicksort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smallerList = quicksort [e| e <- xs, e <= x]
      biggerList  = quicksort [e| e <- xs, e > x]
  in smallerList ++ [x] ++ biggerList
