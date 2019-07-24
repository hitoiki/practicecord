module Main where

import Numeric
import Data.Char

arg = 345

main :: IO ()
main = do
  putStrLn $ show arg
  putStrLn "binaly gap is..."
  putStrLn binaly
  putStrLn (show (f 0 0 binaly))
  where
    binaly = showIntAtBase 2 intToDigit arg ""
    f max cou str =
      if (str == []) then max else
      if ((head str) == '0') then f max (cou+1) (tail str) else
      if (((head str) == '1') && (max <= cou)) then f cou 0 (tail str) else
      if (((head str) == '1') && (max > cou)) then f max 0 (tail str) else -1
