main :: IO ()
main = do
  let ioAction :: IO Int = return 5
  let ioResult = fmap (*2) ioAction
  result <- ioResult
  print result
