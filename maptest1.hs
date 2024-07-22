-- Main.hs

-- Define a function
addOne :: Int -> Int
addOne x = x + 1

-- Define another function
square :: Int -> Int
square x = x * x

-- Define a custom data type
data Box a = Box a deriving (Show)

-- Make `Box` an instance of `Functor`
instance Functor Box where
    fmap f (Box x) = Box (f x)

main :: IO ()
main = do
    -- Maybe examples
    print (fmap addOne (Just 5))  -- Result: Just 6
    print (fmap addOne Nothing)   -- Result: Nothing

    -- List example
    print (fmap square [1, 2, 3, 4, 5])  -- Result: [1, 4, 9, 16, 25]

    -- Custom functor example
    print (fmap double (Box 10))  -- Result: Box 20

-- Define a function to apply to Box
double :: Int -> Int
double x = x * 2
