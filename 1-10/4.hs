-- (*) Find the number of elements of a list.
module Main
  ( main
  ) where

myLength :: [a] -> Int
myLength []     = 0
myLength [_]    = 1
myLength (_:xs) = 1 + myLength xs

main :: IO ()
main = do
  print $ myLength "fff"
  print $ myLength ['a' .. 'z']
