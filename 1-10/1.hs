-- (*) Find the last element of a list.
module Main (main) where

myLast :: [a] -> a
myLast [x]    = x
myLast (_:xs) = myLast xs
myLast _      = error "bad input"

main :: IO ()
main = do
    print $ myLast "fffffuck"
    print $ myLast [1,2,3,4]
    print $ myLast ['a'..'z']
