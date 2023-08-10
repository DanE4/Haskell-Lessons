module Homework8 where
import Data.List
--------------------------------------------------------------------
compress :: Eq a => [a] -> [(Int,a)]
compress [] = []
compress (x:xs) = map (\x -> (length x, head x)) (group (x:xs))
--compress "abbccccb" == [(1, 'a'), (2, 'b'), (4, 'c'), (1, 'b')]
--------------------------------------------------------------------
decompress :: Eq a => [(Int,a)] -> [a]
decompress [] = []
decompress l = concat (map (\(a,b) -> replicate a b) l)
--decompress [(1,'a'),(2,'b'),(4,'c'),(1,'b')]  == "abbccccb"
--------------------------------------------------------------------
firstLetters :: String -> String
firstLetters [] = []    
firstLetters l = unwords (map (\x -> [head x]) (words l))
--firstLetters "Ilosvai Selymes Péter" == "I S P"
--------------------------------------------------------------------