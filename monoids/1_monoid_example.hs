{-# LANGUAGE DeriveGeneric #-}

import GHC.Generics (Generic)
import Data.Semigroup
import Data.Monoid

data Character = Character
  { name :: String
  , age  :: Int
  } deriving (Show, Generic)

instance Semigroup Character where
  (<>) (Character "" 0) p2 = p2
  (<>) p1 (Character "" 0) = p1
  (<>) (Character name1 age1) (Character name2 age2) =
    Character (name1 <> " " <> name2) (age1 + age2)

instance Monoid Character where
  mempty = Character "" 0
  mappend = (<>)

main :: IO ()
main = do
  let character1 = Character "The Smith" 2000
      character2 = Character "Lilith" 1000
      combinedCharacter = character1 <> character2
      emptyCharacter = mempty :: Character
      combinedCharacter1WithEmpty = character1 <> mempty
      combinedCharacter2WithEmpty = mempty <> character2

  putStrLn $ "Character 1: " ++ show character1
  putStrLn $ "Character 2: " ++ show character2
  putStrLn $ "Character with empty 1: " ++ show combinedCharacter1WithEmpty
  putStrLn $ "Character with empty 2: " ++ show combinedCharacter2WithEmpty
  putStrLn $ "Combined Character: " ++ show combinedCharacter
  putStrLn $ "Empty Character (mempty): " ++ show emptyCharacter
  putStrLn $ "Associativity 1: " ++ show ((character1 <> character2) <> character1)
  putStrLn $ "Associativity 2: " ++ show (character1 <> (character2 <> character1))
