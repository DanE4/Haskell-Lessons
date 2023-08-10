module Homework7 where
---------------------------------------------
    all' :: (a -> Bool) -> [a] -> Bool
    all' f l = and (map f l)
---------------------------------------------
    any' :: (a -> Bool) -> [a] -> Bool
    any' f l = or (map f l)
---------------------------------------------
    elem' :: Eq a => a -> [a] -> Bool
    elem' a l = any' (\x -> x == a) l

