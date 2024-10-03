import Data.Monoid (Product(..), getProduct)

emptyProduct = mempty :: Product Int

main :: IO ()
main = do
  let prod1 = Product 10
      prod2 = Product 20
      combinedProduct = prod1 <> prod2


  putStrLn $ "Product 1: " ++ show (getProduct prod1)
  putStrLn $ "Product 2: " ++ show (getProduct prod2)
  putStrLn $ "Combined Product: " ++ show (getProduct combinedProduct)
  putStrLn $ "Empty Product (mempty): " ++ show (getProduct emptyProduct)
  putStrLn $ "Product 1 <> mempty: " ++ show (getProduct (prod1 <> emptyProduct))
  putStrLn $ "mempty <> Product 2: " ++ show (getProduct (emptyProduct <> prod2))
