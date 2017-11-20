-- (**) Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
module Main
  ( main
  ) where

{-
from solution page
qaq 我好弱啊
pack (x:xs) = let (first,rest) = span (==x) xs
               in (x:first) : pack rest
pack [] = []
This is implemented as group in Data.List.

Another simple recursive solution

grp [] = []
grp (x:xs) = (x:(filter (==x) xs)):(grp $ filter (/=x) xs)

-}
draw :: Eq a => ([[a]], [a]) -> ([[a]], [a])
draw ([], x:xs) = draw ([[x]], xs)
draw (a, x:xs)
  | (last . last $ a) == x = draw (init a ++ [last a ++ [x]], xs)
  | otherwise = draw (a ++ [[x]], xs)
draw (a, []) = (a, [])

pack :: Eq a => [a] -> [[a]]
pack a = fst . draw $ ([], a)

main :: IO ()
main = do
  print $ pack "ffffucku"
  print $ pack "fuckkkku"
  print $ pack ""
  print $ pack "fff"
