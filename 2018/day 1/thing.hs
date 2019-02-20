module Main where

import qualified Data.Char

getString :: [Int] -> String
getString = map Data.Char.chr

main :: IO ()
main = do
  inputs <- readFile "ascii.txt"
  let digits = map read . words $ inputs
  putStrLn $ "phrase: " ++ (show . getString) digits
