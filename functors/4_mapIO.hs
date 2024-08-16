main :: IO ()
main = do
--  Some GHC versions do not recognize :: IO Int
--  let ioGet5Action = return 5
  let ioGet5Action :: IO Int = return 5
-- An IO is a computation that performs with side-effects
-- When we invoke it by trying to print, it interprets as a computation and looks for
-- Show IO, which doesn't exist for a computation of type IO
  let ioMappedResult = fmap (*2) ioGet5Action
  result <- ioMappedResult
  print result
  let doubleResult = fmap (*2) ioMappedResult
  result2 <- doubleResult
  print result2
