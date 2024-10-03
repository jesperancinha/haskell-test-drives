import Data.Semigroup

main :: IO ()
main = do
  let list1 = [1, 2, 3]
      list2 = [4, 5, 6]
      combinedList = list1 <> list2
      list1Empty = list1 <> mempty
      list2Empty = mempty <> list2

  putStrLn $ "List 1: " ++ show list1
  putStrLn $ "List 2: " ++ show list2
  putStrLn $ "List 1 with empty: " ++ show list1Empty
  putStrLn $ "List 2 with empty: " ++ show list2Empty
  putStrLn $ "Combined List: " ++ show combinedList
