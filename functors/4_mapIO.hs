main :: IO ()
main = do
  let ioGet5Action :: IO Int = return 5
  let ioMappedResult = fmap (*2) ioGet5Action
  result <- ioMappedResult
  print result
  let doubleResult = fmap (*2) ioMappedResult
  result2 <- doubleResult
  print result2
