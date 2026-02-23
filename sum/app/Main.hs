module Main where

import Sum (sumTwo)
import System.IO (hFlush, stdout)

main :: IO ()
main = do
  putStr "Introduce el primer número: "
  hFlush stdout
  input1 <- getLine
  let n1 = read input1 :: Int

  putStr "Introduce el segundo número: "
  hFlush stdout
  input2 <- getLine
  let n2 = read input2 :: Int

  let ans = sumTwo n1 n2
  putStrLn $ "La suma es: " ++ show ans
