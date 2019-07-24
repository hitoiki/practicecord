module Main where

import Numeric
import Data.Char

life = [[0,0,0,0,0],
        [0,1,0,1,0],
        [0,0,1,0,0],
        [0,1,0,1,0],
        [0,0,0,0,0]]

main :: IO ()
main = do

load life

load $sellCheck life (reverse(map reverse (sellCheck life
 [[0,0,0,0,0],
 [0,0,0,0,0],
 [0,0,0,0,0],
 [0,0,0,0,0],
 [0,0,0,0,0]])))


where

  -- exampleOne lowerCamelCase <- 関数名とか変数名とかで採用するべき（HaskellとjavaとScalaとかで慣習でそう決まってる
  -- ExampleOne UpperCamelCase <- クラス名とかモジュール名とかで採用する

  argScaner f a b =
      map (\n -> f (a !! n) (b !! n)) $take (length(a)) [0..]

  load arg = putStrLn $ concat $ map ((++ "\n") . show) arg

  turn i (a:as)
    | a:as == []  = []
    | i == 0 = [a] ++ as
    | i < 0 = turn (length(a:as) + i)  $a:as
    | otherwise = turn (i-1) $as ++ [a]
  --turnはもっと最適化できるけど取り敢えずこれで

  --セルチェックは右横と下にかけて、それをreverseで二回やる
  sellCheck arg paper =
    foldl (\x y -> argScaner (argScaner (+)) x (map (turn 1) y)) paper [(turn 1 arg),(turn (-1) arg),arg,(turn 1 (map (turn (-1)) arg))]
