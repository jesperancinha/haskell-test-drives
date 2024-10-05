main :: IO ()
main = do
    let result = [1, 2] >>= (\x -> [x + 10, x + 20])
    putStr (show result)
