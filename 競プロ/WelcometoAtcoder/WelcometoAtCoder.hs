module Main where

import Numeric
import Data.Char

main :: IO ()
main = do

--putStrLn "enter the a"
a <- readLn

--putStrLn "enter the b,c"
[b, c] <- map read . words <$> getLine

--putStrLn "enter the s"
s <- getLine

putStrLn $ show (a + b + c) ++ " " ++ s