-- BST implementation 

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node y left right)
  | x == y = Node y left right
  | x > y  = Node y left (treeInsert x right)
  | x < y  = Node y (treeInsert x left) right


 -- Tree traversal and searching in a BST
searchTree :: (Ord a) => a -> Tree a -> Bool
searchTree _ EmptyTree = False
searchTree x (Node y left right)
  | x == y = True
  | x < y  = searchTree x left
  | x > y  = searchTree x right
