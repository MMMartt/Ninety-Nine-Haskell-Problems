-- (**) Eliminate consecutive duplicates of list elements.
module Main
  ( main
  ) where

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [a] = [a]
compress (a:b:xs) =
  if a == b
    then compress (b : xs)
    else a : compress (b : xs)

-- from solution page:
{-
compress' (x:ys@(y:_))
  | x == y = compress' ys
  | otherwise = x : compress' ys
compress' ys = ys
-}

main :: IO ()
main = do
  print $ compress "fuckrettturn  value"
  print $ compress "mzzzz-m"
