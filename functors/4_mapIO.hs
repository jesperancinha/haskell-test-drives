main :: IO ()
main = do
  let ioAction = return 5  -- ioAction is an IO Int
  let ioResult = fmap (*2) ioAction  -- ioResult is an IO Int, where the result will be doubled
  result <- ioResult  -- execute the IO action and get the result
  print result  -- prints 10
