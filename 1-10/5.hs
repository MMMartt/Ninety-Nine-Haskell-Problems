-- (*) Reverse a list.
module Main
  ( main
  ) where

myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

main :: IO ()
main = do
  print $ myReverse "fffo"
  print $ myReverse ['a' .. 'z']
