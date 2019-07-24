module Main where

import Numeric
import Data.Char

quest = [1,2,3,4,5]
k = 3

main :: IO ()
main = do
  --forM_ putStrLn . show $ [quest, k ++ "cycle is...", ans quest k]
  putStrLn $ show $ quest
  putStrLn $ show k ++ "cycle is..."
  putStrLn $ show $ ans quest k
    where
      ans (a:as) i
        | a:as == []  = []
        | i == 0 = [a] ++ as
        | otherwise = ans (as ++ [a]) $ i-1
