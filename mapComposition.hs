increment :: Int -> Int
increment x = x + 1

square :: Int -> Int
square x = x * x

maybeResult3 :: Maybe Int
maybeResult3 = fmap (square . increment) (Just 5)

main :: IO ()
main = do
  print maybeResult3
  print (fmap (square . increment) [1,2,3,4,5])