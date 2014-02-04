-- main = do
--   putStrLn "Enter your name"
--   name <- getLine
--   putStrLn ("Hey " ++ name ++ ", you rock!")

main = do
  line <- getLine
  if null line
     then return ()
     else do
       putStrLn $ reverseWords line
       main


reverseWords :: String -> String
reverseWords = unwords . map reverse .words 


putStr' :: String -> IO ()
putStr' [] = return ()
putStr' (x:xs) = do
  putChar x
  putStr' xs
