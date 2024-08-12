main :: IO ()
main = do
  let byTwo = (*2)
  let plusThree = (+3)
  let plusTreeByTwo= fmap byTwo plusThree
  let plusExtra = fmap plusTreeByTwo (+2)
  print $ plusTreeByTwo 10
  print (fmap plusTreeByTwo [1,2,3])
  print $ plusExtra 10
