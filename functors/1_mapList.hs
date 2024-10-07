addOne :: Int -> Int
addOne x = x + 1

square :: Int -> Int
square x = x * x

identityFunction :: Int -> Int
identityFunction x = x

main :: IO ()
main = do
    print (fmap addOne (Just 5))
    print (fmap addOne Nothing)
    print (fmap addOne [1, 2, 3, 4, 5])
    print (fmap square [1, 2, 3, 4, 5])
    print ([1,2,3,4,5])
    print (fmap identityFunction [1,2,3,4,5])
    print (fmap (addOne . square) [1,2,3,4,5] == (fmap addOne . fmap square) [1,2,3,4,5])
