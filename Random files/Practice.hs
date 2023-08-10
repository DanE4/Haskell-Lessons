module Practice where
import Data.List

--------------------------------------------------------------------
compress :: Eq a => [a] -> [(Int,a)]
compress l = map (\x -> (length x, head x)) (group l)
--compress "abbccccb" == [(1, 'a'), (2, 'b'), (4, 'c'), (1, 'b')]
--------------------------------------------------------------------
decompress :: Eq a => [(Int,a)] -> [a]
decompress l = concat (map (\(a,b) -> replicate a b) l)
--decompress [(1,'a'),(2,'b'),(4,'c'),(1,'b')]  == "abbccccb"
--------------------------------------------------------------------
firstLetters :: String -> String
firstLetters l = unwords (map (\x -> [head x]) (words l))
--firstLetters "Ilosvai Selymes Péter" == "I S P"
--------------------------------------------------------------------
--SpaceX_Rocket_Return :: ([(x,y,z)] -> [(x,y,z)]) -> [[(Bool,a,b)]] -> [[(Bool,a,b)]]