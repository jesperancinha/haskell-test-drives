import Data.Monoid (All(..), getAll)

emptyAll = mempty :: All

main :: IO ()
main = do
  let bool1 = All True
      bool2 = All False
      combinedBool = bool1 <> bool2

  putStrLn $ "Bool 1: " ++ show (getAll bool1)
  putStrLn $ "Bool 2: " ++ show (getAll bool2)
  putStrLn $ "Combined Bool (Bool 1 <> Bool 2): " ++ show (getAll combinedBool)
  putStrLn $ "Empty All (mempty): " ++ show (getAll emptyAll)
  putStrLn $ "Bool 1 <> mempty: " ++ show (getAll (bool1 <> emptyAll))
  putStrLn $ "mempty <> Bool 2: " ++ show (getAll (emptyAll <> bool2))
