module Main where

import Data.Char

main :: IO ()
main = do

--putStrLn "enter the s1,s2,s3"
s <- getLine
putStrLn $ show $ marblesCount s 
                    where
                    marblesCount (a:as)
                        |as == [] = if a == '1' then 1 else 0 
                        |a == '1' = 1 + marblesCount as
                        |otherwise = marblesCount as
