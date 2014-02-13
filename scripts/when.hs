import Control.Monad

main = do
 -- putStrLn "Enter stuff"
  chars <- getChar
  when (chars /= ' ') $ do
    putChar chars
    main
