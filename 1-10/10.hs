-- (*) Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
module Main
  ( main
  ) where

draw :: Eq a => ([(Int, a)], [a]) -> ([(Int, a)], [a])
draw ([], x:xs) = draw ([(1, x)], xs)
draw (a, x:xs)
  | snd curr == x = draw (init a ++ [(fst curr + 1, snd curr)], xs)
  | otherwise = draw (a ++ [(1, x)], xs)
  where curr = last a
draw a = a

pack :: Eq a => [a] -> [(Int, a)]
pack a = fst . draw $ ([], a)

main :: IO ()
main = do
  print $ pack "ffffucku"
  print $ pack "fuckkkku"
  print $ pack ""
  print $ pack "fff"
