module Base (
    pack,
    Quantity (Multiple, Single),
    ) where
-- copy from 09.hs
-- import pack
draw :: Eq a => ([[a]], [a]) -> ([[a]], [a])
draw ([], x:xs) = draw ([[x]], xs)
draw (a, x:xs)
  | (last . last $ a) == x = draw (init a ++ [last a ++ [x]], xs)
  | otherwise = draw (a ++ [[x]], xs)
draw (a, []) = (a, [])

pack :: Eq a => [a] -> [[a]]
pack a = fst . draw $ ([], a)

data Quantity a = Multiple Int a | Single a deriving (Show)
