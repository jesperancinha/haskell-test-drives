main :: IO()
main = do
    putStr (show (return 5 :: Maybe Int))

