module Main where

import Numeric
import Data.Char

main :: IO ()
main = do

putStrLn "enter the a,b"
[a, b] <- map read . words <$> getLine

putStrLn  $ if mod (a * b) 2 == 0 then "Even" else "Odd"


--exeで開いたときに待機する場所
wait <- getChar
putStrLn ""