{-# LANGUAGE DeriveGeneric #-}

import GHC.Generics (Generic)
import Data.Semigroup
import Data.Monoid

data Person = Person
  { name :: String
  , age  :: Int
  } deriving (Show, Generic)

instance Semigroup Person where
  (<>) (Person "" 0) p2 = p2  -- If first person is empty, return the second
  (<>) p1 (Person "" 0) = p1  -- If second person is empty, return the first
  (<>) (Person name1 age1) (Person name2 age2) =
    Person (name1 <> " & " <> name2) (age1 + age2)

instance Monoid Person where
  mempty = Person "" 0
  mappend = (<>)

main :: IO ()
main = do
  let person1 = Person "Alice" 30
      person2 = Person "Bob" 25
      combinedPerson = person1 <> person2
      emptyPerson = mempty :: Person
      combinedPerson1WithEmpty = person1 <> mempty
      combinedPerson2WithEmpty = mempty <> person2

  putStrLn $ "Person 1: " ++ show person1
  putStrLn $ "Person 2: " ++ show person2
  putStrLn $ "Person with empty 1: " ++ show combinedPerson1WithEmpty
  putStrLn $ "Person with empty 2: " ++ show combinedPerson2WithEmpty
  putStrLn $ "Combined Person: " ++ show combinedPerson
  putStrLn $ "Empty Person (mempty): " ++ show emptyPerson
