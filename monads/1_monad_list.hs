module Main where

createTwoElementFunction :: Int -> [Int]
createTwoElementFunction x = [x, x + 1]

createDoubleElementFunction :: Int -> [Int]
createDoubleElementFunction x = [x * 2]

leftIdentityTest :: Int -> Bool
leftIdentityTest a = (return a >>= createTwoElementFunction) == createTwoElementFunction a

rightIdentityTest :: [Int] -> Bool
rightIdentityTest m = (m >>= return) == m

-- Bonus

associativityTest :: [Int] -> Bool
associativityTest m = ((m >>= createTwoElementFunction) >>= createDoubleElementFunction) == (m >>= (\x -> createTwoElementFunction x >>= createDoubleElementFunction))

naturalityTest :: (Int -> Int) -> [Int] -> Bool
naturalityTest f m = fmap f m == (m >>= return . f)

monadHomomorphismTest :: (Int -> Int) -> Int -> Bool
monadHomomorphismTest f a = (return (f a) :: [Int]) == fmap f (return a)

interchangeTest :: Int -> Bool
interchangeTest a = (return a >>= createTwoElementFunction) == (createTwoElementFunction a >>= return)

main :: IO ()
main = do
    let testValue :: Int
        testValue = 5
    let testList :: [Int]
        testList = [1,2,3]
    let listOfLists :: [[Int]]
        listOfLists = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    putStrLn $ "Used the unit operation (" ++ show (return testValue :: [Int]) ++ "): "
    putStrLn $ "Just a flatMap operation (" ++ show testList ++ "): " ++ show (testList >>= (\x -> [x * 2]))
    putStrLn $ "Another flatMap operation (" ++ show listOfLists ++ "): " ++ show (listOfLists >>= (\x -> x))
    putStrLn $ "Left Identity (" ++ show testValue ++ "): " ++ show (leftIdentityTest testValue)
    putStrLn $ "Right Identity (" ++ show testList ++ "): " ++ show (rightIdentityTest testList)
    putStrLn $ "Associativity (" ++ show testList ++ "): " ++ show (associativityTest testList)
    -- Bonus tests
    putStrLn $ "Naturality Test (+1) " ++ show testList ++ ": " ++ show (naturalityTest (+1) testList)
    putStrLn $ "Monad Homomorphism Test (*2) " ++ show testValue ++ ": " ++ show (monadHomomorphismTest (*2) testValue)
    putStrLn $ "Interchange Test (" ++ show testValue ++ "): " ++ show (interchangeTest testValue)
