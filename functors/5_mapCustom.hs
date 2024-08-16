data SafeVault a = SafeVault a deriving (Show)

instance Functor SafeVault where
    fmap f (SafeVault x) = SafeVault (f x)

double :: Int -> Int
double x = x * 2

customResult :: SafeVault Int
customResult = fmap double (SafeVault 10)

main :: IO ()
main = do
  print customResult
  print (fmap double customResult)
  print (fmap double [1,2,3,4,5])
