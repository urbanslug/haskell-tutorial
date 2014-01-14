fizzBuzz :: (Integral a) => [a] -> [String]
fizzBuzz [] = []
fizzBuzz (x:xs)
  | x `mod` 3 == 0 = "Fizz" : fizzBuzz xs
  | x `mod` 5 == 0 = "Buzz" : fizzBuzz xs
  | x `mod` 15 == 0 = "fizzBuzz" : fizzBuzz xs
  | otherwise = fizzBuzz xs

-- with a lamda I know it's overkill.

fizzBuzz' :: (Integral a) => [a] -> [String]
fizzBuzz [] = []
fizzBuzz' (x:xs)
  | (\z -> z `mod` 3) x == 0 = "Fizz" : fizzBuzz' xs
  | (\z -> z `mod` 5) x == 0 = "Buzz" : fizzBuzz' xs
  | (\z -> z `mod` 15) x == 0 = "fizzBuzz" : fizzBuzz' xs
  | otherwise = fizzBuzz' xs

