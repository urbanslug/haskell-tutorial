main = do
  putStrLn "Hello, what's your name?"
  name <- getLine
  putStrLn $ "Read this carefuly because it is your future: " ++ tellFortune name

-- type synonym w00t
type Name = String

tellFortune :: Name -> String
tellFortune name = "Uh " ++ name ++ " I don't know much, I lied."
