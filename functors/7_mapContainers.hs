import qualified Data.Map as Map

main :: IO ()
main = do
    let mapOfStrings = Map.fromList [(1, "a"), (2, "b")]
    let mapOfNumbers = Map.fromList [(1, 123), (2, 456)]
    print $ mapOfStrings
    print $ mapOfNumbers
    print $ fmap (++ "z") mapOfStrings
    print $ fmap (+ 1) mapOfNumbers
