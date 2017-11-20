-- (**) Flatten a nested list structure.
module Main
  ( main
  ) where

data NestedList a
  = Elem a
  | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem a)      = [a]
flatten (List [])     = []
flatten (List (x:xs)) = flatten x ++ flatten (List xs)

main :: IO ()
main = do
  print $ flatten (Elem '1')
  print $ flatten (List [Elem '1', List [Elem '2', Elem '3', List [Elem '2']]])
  print $ flatten (List [Elem 1, List [Elem 2, Elem 3, List [Elem 2]]])
