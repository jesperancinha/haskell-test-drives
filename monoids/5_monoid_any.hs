import Data.Monoid (Any(..), getAny)

emptyAny = mempty :: Any

main :: IO ()
main = do
  let bool1 = Any True
      bool2 = Any False
      combinedBool = bool1 <> bool2

  putStrLn $ "Bool 1: " ++ show (getAny bool1)
  putStrLn $ "Bool 2: " ++ show (getAny bool2)
  putStrLn $ "Combined Bool (Bool 1 <> Bool 2): " ++ show (getAny combinedBool)
  putStrLn $ "Empty Any (mempty): " ++ show (getAny emptyAny)
  putStrLn $ "Bool 1 <> mempty: " ++ show (getAny (bool1 <> emptyAny))
  putStrLn $ "mempty <> Bool 2: " ++ show (getAny (emptyAny <> bool2))
