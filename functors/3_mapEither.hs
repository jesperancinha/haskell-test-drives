import Data.Either

main :: IO ()
main = do
    let rightValue = Right 5 :: Either String Int
    print $ fmap (+1) rightValue

    let secondRightValue = fmap (+5) rightValue
    print secondRightValue

    let leftValue = Left "Error" :: Either String Int
    print $ fmap (+1) leftValue
