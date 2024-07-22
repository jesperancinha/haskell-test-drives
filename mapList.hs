addOne :: Int -> Int
addOne x = x + 1

square :: Int -> Int
square x = x * x

data Box a = Box a deriving (Show)

instance Functor Box where
    fmap f (Box x) = Box (f x)

main :: IO ()
main = do
    print (fmap addOne (Just 5))
    print (fmap addOne Nothing)
    print (fmap square [1, 2, 3, 4, 5])
    print ([1,2,3,4,5])
    print (fmap double (Box 10))
double :: Int -> Int
double x = x * 2
