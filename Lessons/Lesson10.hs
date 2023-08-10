module Lesson10 where
import Prelude hiding(Maybe(..), lookup, find, Either(..))

data Maybe a = Nothing | Just a deriving(Show, Eq) --Data.Maybe

isJust :: Maybe a -> Bool
isJust (Just _) = True
isJust _ = False;

isNothing :: Maybe a -> Bool
isNothing Nothing = True
isNothing _ = False

maybe :: b -> (a -> b) -> Maybe a -> b
maybe def f Nothing = def
maybe def f (Just a) = f a

eqMaybe :: Eq a => Maybe a -> Maybe a -> Bool
eqMaybe (Just x) (Just y) = x == y
eqMaybe Nothing Nothing = True
eqMaybe _ _ = False

fromJust :: Maybe a -> a
fromJust (Just a) = a

fromMaybe :: a -> Maybe a -> a
fromMaybe a Nothing = a
fromMaybe _ (Just a) = a

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:xs) = Just xs

find :: (a -> Bool) -> [a] -> Maybe a
find _ [] = Nothing
find a (x:xs)
 | a x = Just x
 | otherwise = find a xs

--find p = safeHead . filter p

findIndex :: (a -> Bool) -> [a] -> Maybe Int
findIndex p l = findIndexHelper 0 l
 where
  findIndexHelper _ [] = Nothing
  findIndexHelper a (x:xs)
   | p x = Just a
   | otherwise = findIndexHelper (a+1) xs

findIndex' :: (a -> Bool) -> [a] -> Maybe Int
findIndex' p l = findIndexHelper p 0 l
 where
  findIndexHelper :: (a -> Bool) -> Int -> [a] -> Maybe Int
  findIndexHelper _ _ [] = Nothing
  findIndexHelper p a (x:xs)
   | p x = Just a
   | otherwise = findIndexHelper p (a+1) xs

safeDiv :: Integral a => a -> a -> Maybe a
safeDiv _ 0 = Nothing
safeDiv a b = Just (a `div` b)

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x:xs) = Just x


{-
>>> lookup 2 []
Nothing
>>> lookup 2 [(1, "first")]
Nothing
>>> lookup 2 [(1, "first"), (2,"second"), (2, "nyÃ³ccadik")]
Just "second"
-}

lookup :: Eq a => a -> [(a, b)] -> Maybe b
lookup _ [] = Nothing
lookup k ((a, b):xs)
 | k == a = Just b
 | otherwise = lookup k xs

lookUpPro :: Eq a => a -> [(a, b)] -> Maybe b
lookUpPro k = safeHead. map snd . filter ((==k) . fst)

data Either a b = Left a | Right b deriving(Eq, Ord, Show)

isLeft :: Either a b -> Bool
isLeft (Left _) = True
isLeft _ = False

isRight :: Either a b -> Bool
isRight (Right _) = True
isRight _ = False

data Natural = Null | Next Natural deriving(Show)