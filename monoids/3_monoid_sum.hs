import Data.Monoid (Sum(..), getSum)

emptySum = mempty :: Sum Int

main :: IO ()
main = do
  let sum1 = Sum 10
      sum2 = Sum 20
      combinedSum = sum1 <> sum2

  putStrLn $ "Sum 1: " ++ show (getSum sum1)
  putStrLn $ "Sum 2: " ++ show (getSum sum2)
  putStrLn $ "Combined Sum: " ++ show (getSum combinedSum)
  putStrLn $ "Empty Sum (mempty): " ++ show (getSum emptySum)
  putStrLn $ "Sum 1 <> mempty: " ++ show (getSum (sum1 <> emptySum))
  putStrLn $ "mempty <> Sum 2: " ++ show (getSum (emptySum <> sum2))

