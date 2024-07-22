increment :: Int -> Int
increment x = x + 1

square :: Int -> Int
square x = x * x

maybeResult3 :: Maybe Int
maybeResult3 = fmap (square . increment) (Just 5)

main :: IO ()
main = print maybeResult3