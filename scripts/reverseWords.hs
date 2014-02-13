main = do
  putStrLn "Enter a phrase."
  stringInput <- getLine
  if null stringInput then
     return ()
  else do
     let reversedWords = reverseWords stringInput
     putStrLn reversedWords
     main


reverseWords :: String -> String
reverseWords = unwords . map reverse . words


-- function composition is an implicit lamda
-- f.g.h is (\x -> f (g ( h x) ) )
