module Homework5 where
------------------------------------------------------------------
hasFever :: Int -> Bool
hasFever a 
    | div ((a-32)*10) 18  >= 38 = True
    | otherwise = False
------------------------------------------------------------------
positiveProduct :: (Num a, Ord a) => [a] -> a
positiveProduct []=1
positiveProduct (x:xs)
    | x > 0 = x * positiveProduct xs
    | otherwise = positiveProduct xs
------------------------------------------------------------------
mightyGale :: [(String, Int, Int, Int)] -> String
mightyGale [] = ""
mightyGale ((a,b,c,d):xs)
    | c > 110 = a
    | otherwise = mightyGale xs
------------------------------------------------------------------
