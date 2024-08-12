data Box a = Box a deriving (Show)

instance Functor Box where
    fmap f (Box x) = Box (f x)

double :: Int -> Int
double x = x * 2

customResult :: Box Int
customResult = fmap double (Box 10)

main :: IO ()
main = do
  print customResult
  print (fmap double customResult)
  print (fmap double [1,2,3,4,5])
