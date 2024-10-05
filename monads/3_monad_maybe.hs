main :: IO()
main = do
    let result = Just 42 >>= (\x -> Just (x + 1))
    putStr (show result)
