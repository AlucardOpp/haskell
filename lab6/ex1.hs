main = do
  putStrLn "Enter first number:"
  x <- getLine
  putStrLn "Enter second number:"
  y <- getLine
  putStrLn "Sum:"
  print (read x + read y)