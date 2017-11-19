-- (*) Find the K'th element of a list. The first element in the list is number 1.
module Main
  ( main
  ) where

elementAt :: [a] -> Int -> a
elementAt arr pos = arr !! (pos - 1)

main :: IO ()
main = do
  print $ elementAt "thing" 1
  print $ elementAt "other" 2
