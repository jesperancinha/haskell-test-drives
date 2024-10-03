import Data.Monoid (First(..), getFirst)

emptyFirst = mempty :: First String

main :: IO ()
main = do
  let value1 = Just "Hello"
      value2 = Just "World"
      value3 :: Maybe String
      value3 = Nothing
      combined1 = First value1 <> First value2
      combined2 = First value1 <> First value3
      combined3 = First value3 <> First value2

  putStrLn $ "Value 1: " ++ show value1
  putStrLn $ "Value 2: " ++ show value2
  putStrLn $ "Value 3: " ++ show value3
  putStrLn $ "Empty First (mempty): " ++ show (getFirst emptyFirst)
  putStrLn $ "Combined Value 1 and Value 2: " ++ show (getFirst combined1)
  putStrLn $ "Combined Value 1 and Nothing: " ++ show (getFirst combined2)
  putStrLn $ "Combined Nothing and Value 2: " ++ show (getFirst combined3)
