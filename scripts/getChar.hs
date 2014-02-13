main = do
  putStrLn "Enter stuff"
  char <- getChar
  if char /= ' '
     then do
       putChar char
       main
  else do
     putChar '\n'
     return ()
