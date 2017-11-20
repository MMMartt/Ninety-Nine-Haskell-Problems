-- (*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
module Main
  ( main
  ) where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome []  = True
isPalindrome [_] = True
isPalindrome l   = head l == last l && (isPalindrome . init . tail $ l)

main :: IO ()
main = do
  print $ isPalindrome "fuck"
  print $ isPalindrome "fuckcuf"
