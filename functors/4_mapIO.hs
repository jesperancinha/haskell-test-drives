main :: IO ()
main = do
--  Some GHC versions do not recognize :: IO Int
--  let ioGet5Action = return 5
  let ioGet5Action :: IO Int = return 5
  let ioMappedResult = fmap (*2) ioGet5Action
  result <- ioMappedResult
  print result
  let doubleResult = fmap (*2) ioMappedResult
  result2 <- doubleResult
  print result2
