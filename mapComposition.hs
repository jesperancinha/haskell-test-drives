import Data.Array

increment :: Int -> Int
increment x = x + 1

square :: Int -> Int
square x = x * x

compositionMaybeResult1 :: Maybe Int
compositionMaybeResult1 = fmap (square . increment) (Just 5)

compositionListResult1 :: [Int]
compositionListResult1 = fmap (square . increment) ([1,2,3,4,5])

main :: IO ()
main = do
  print compositionMaybeResult1
  print compositionListResult1
  print (fmap (square . increment) [1,2,3,4,5])