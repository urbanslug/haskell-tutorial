module Shapes
( Point (..),
  Shape (..),
  Person (..),
  surface,
  nudge,
  baseCircle,
  baseRect
) where

data Point = Point Float Float 
             deriving (Show)
                      
data Shape = Circle Point Float | Rectangle Point Point
             deriving (Show)
-- data Person = Person { firstName :: String,
--                       lastName :: String,
--                       age :: Int,
--                       height :: Float,
--                       phoneNumber :: String,
--                       flavour :: String
--                     } deriving (Show)

data Person = Person { firstName :: String,
                       lastName :: String,
                       age :: Int 
                     } deriving (Eq, Show, Read)

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
           deriving (Eq, Ord, Show, Read, Bounded, Enum)

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

nudge :: Shape -> Float -> Float ->Shape
nudge (Circle (Point x y) r) dx dy = Circle (Point (dx+x) (dy+y)) r
nudge (Rectangle (Point x1 y1) (Point x2 y2)) dx dy = Rectangle (Point  (dx+x1) (dy+y1)) (Point (dx+x2) (dy+y2))

baseCircle :: Float -> Shape
baseCircle r = Circle (Point 0 0) r

baseRect :: Float -> Float -> Shape
baseRect width height = Rectangle (Point 0 0) (Point width height)
