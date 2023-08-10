module Homework12 where
import Data.List
import Data.Char
import Data.Maybe

--------------------------------------------------------------------------------
schedule :: [a] -> (a -> Int) -> Int
schedule [] _ = 0
schedule (x:xs) f = (f x) + schedule xs f


--------------------------------------------------------------------------------
--Számítógép
data Computer = Comp Integer Integer deriving (Eq)
type Computers = [Computer]

--------------------------------------------------------------------------------
--Google Chrome
goodEnougComputer :: Computers -> Int
goodEnougComputer [] = 0
goodEnougComputer (x:xs) 
    | isGood x = 1 + goodEnougComputer xs
    | otherwise = goodEnougComputer xs
    where isGood (Comp ram _) = ram >= 16384









