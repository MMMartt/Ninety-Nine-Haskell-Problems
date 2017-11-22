-- (**) Decode a run-length encoded list.
module Main
  ( main
  ) where

import           Base (Quantity (Multiple, Single))

typeToRaw :: Eq a => Quantity a -> [a]
typeToRaw (Single c)        = [c]
typeToRaw (Multiple size c) = replicate size c

decodeModified :: Eq a => [Quantity a] -> [a]
decodeModified = concatMap typeToRaw

main :: IO ()
main = do
  print $
    decodeModified
      [Multiple 4 'f', Single 'u', Single 'c', Single 'k', Single 'u']
  print $
    decodeModified
      [Single 'f', Single 'u', Single 'c', Multiple 4 'k', Single 'u']
  print $ decodeModified ([] :: [Quantity Char])
  print $ decodeModified [Multiple 3 'f']
