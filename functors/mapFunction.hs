--instance Functor ((->) r) where
--    fmap = (.)

main :: IO ()
main = do
  let f = (*2)
  let g = (+3)
  let h = fmap f g
  print $ h 10
  print (h ([1,2,3]))