main :: IO()
main = do
    let result :: Either String Int
        result = Right 10 >>= (\x -> Right (x * 2))
    putStrLn (show result)
