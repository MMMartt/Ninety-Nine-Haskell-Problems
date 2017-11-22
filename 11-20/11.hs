-- (*) Modified run-length encoding.
module Main
  ( main
  ) where

import           Base (Quantity (Multiple, Single), pack)

mapPackedToType :: [a] -> Quantity a
mapPackedToType xs
  | size == 1 = Single c
  | otherwise = Multiple size c
  where
    size = length xs
    c = head xs

encodeModified :: Eq a => [a] -> [Quantity a]
encodeModified l = map mapPackedToType (pack l)

main :: IO ()
main = do
  print $ encodeModified "ffffucku"
  print $ encodeModified "fuckkkku"
  print $ encodeModified ""
  print $ encodeModified "fff"
