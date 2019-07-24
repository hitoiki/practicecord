module Main where

import Numeric
import Data.Char

x = 10
y = 85
d = 30

main :: IO ()
main = do

putStrLn . show $ [x,y,d]
putStrLn "frogjump is..."
putStrLn . show $ frogjump x y d
  where
    frogjump x y d
      | y > (d + x) = 1 + frogjump x (y-d) d
      | y <= (d + x) = 1
