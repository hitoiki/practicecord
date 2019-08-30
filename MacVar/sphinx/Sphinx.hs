module Main where

import Numeric
import Data.Char

n = 3
m = 9

main :: IO ()
main = do

putStrLn "How Many Human?"
n' <- getLine
let n = read(n')::Int

putStrLn "How Many Legs?"
m' <- getLine
let m = read(m')::Int

putStrLn . show $ if (4 * n >= m && m >= 2 * n) then nApply (m - 2 * n) sphinx [n,0,0] else [-1,-1,-1]
  where
    sphinx :: [Int] -> [Int]
    sphinx (a:b:c:cs)
      | (a:b:c:cs) == [] = []
      | mod b 2 == 1 = a : (b-1) : (c+1) : cs 
      | mod b 2 == 0 = (a-1) : (b+1) : c : cs
  
    nApply n f
      | n == 1 = f
      | otherwise = f . nApply (n-1) f

