module Main where

--import qualified System.IO
--import qualified Control.Monad
--import qualified Text.Read

--myMap :: (a -> b) -> [a] -> [b]
--myMap _ []     = []
--myMap f (x:xs) = f x : map f xs

parseInt :: String -> Int
parseInt s =
  case s of
    ('+':xs) -> read xs
    _        -> read s

calcFrequency :: Num a => a -> [a] -> a
calcFrequency x (n:ns) =
  case ns of
    [] -> x+n
    _  -> calcFrequency (x+n) ns

main :: IO ()
main = do
  inputs <- readFile "freqs.txt"
  let freqs = map parseInt . words $ inputs
  putStrLn $ "Total frequencies: " ++ (show . length) freqs
  putStrLn $ "Result frequency: " ++ show (calcFrequency 0 freqs)
