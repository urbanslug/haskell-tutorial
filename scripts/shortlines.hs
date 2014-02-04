main = do
  contents <- getContents
  putStr (shortLinesOnly contents)


shortLinesOnly :: String -> String
shortLinesOnly input =
  let allLines = lines input
      shortLines =  filter (\eachLine -> length eachLine < 10 ) allLines
      result = unlines shortLines
  in  result
