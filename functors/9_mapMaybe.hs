increment :: Int -> Int
increment x = x + 1

maybeResult1 :: Maybe Int
maybeResult1 = fmap increment (Just 5)

maybeResult2 :: Maybe Int
maybeResult2 = fmap increment Nothing

main :: IO ()
main = do
    print maybeResult1
    print maybeResult2
    print (fmap increment ([1,2,3,4,5]))
