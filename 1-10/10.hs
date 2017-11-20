-- (**) Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.
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
