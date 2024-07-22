data Box a = Box a deriving (Show)

instance Functor Box where
    fmap f (Box x) = Box (f x)

double :: Int -> Int
double x = x * 2

result4 :: Box Int
result4 = fmap double (Box 10)

main :: IO ()
main = print result4