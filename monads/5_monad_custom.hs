data Box a = Box a
    deriving (Show)

instance Functor Box where
    fmap f (Box x) = Box (f x)

instance Applicative Box where
    pure = Box
    (Box f) <*> (Box x) = Box (f x)

instance Monad Box where
    return = pure
    (Box x) >>= f = f x

boxFunction :: Int -> Box Int
boxFunction x = Box (x * 2)

main :: IO ()
main = do
    let boxedValue = Box 5 >>= boxFunction
    print boxedValue
