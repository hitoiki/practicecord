module Main where

    import Numeric
    import Data.Char
    
    main :: IO ()
    main = do
    
    ignore <- getLine --なんか使わずに済んだので無視
    arg <- map (\x -> read(x)::Integer) . words <$> getLine
    
    putStrLn $ show . minimum $ map (factorization 2) arg
                                where
                                    factorization :: Integer -> Integer -> Integer
                                    factorization a b  --bを素因数分解した時のaの係数
                                        |mod b a == 0 = 1 + factorization a (div b a)
                                        |otherwise = 0