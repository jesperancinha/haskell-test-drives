import qualified Data.Map as Map

main :: IO ()
main = do
    let m = Map.fromList [(1, "a"), (2, "b")]
    print $ fmap (++ "x") m
