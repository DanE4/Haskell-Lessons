import Data.List (intercalate)

newtype Size = Size {unSize :: Int} deriving (Eq,Ord)


instance Bounded Size where
    minBound = Size 9
    maxBound = Size 59

    
instance Enum Size where
    succ (Size int) = size $ succ $ succ int
    pred (Size int) = size $ pred $ pred int
    toEnum = size
    fromEnum (Size int) = int
    enumFrom (Size start) = map size $ enumFromThenTo start (succ $ succ start) $ unSize maxBound
    enumFromThen (Size start) (Size next) = map size $ enumFromThenTo start next (unSize $ if next < start then minBound else maxBound) -- nehogy bárki is beszóljon erre, ez sor közben van, nem ezzel kezdődik a függvény. :D
    enumFromTo (Size start) (Size end) = map size $ enumFromThenTo start (succ $ succ start) end
    enumFromThenTo (Size start) (Size next) (Size end) = map size $ enumFromThenTo start next (min 59 end)


instance Show Size where
    showsPrec prec (Size integer) = showsPrec prec integer


instance Num Size where
    (Size n) + (Size m) = size $ floorToOdd $ n + m
    (Size n) - (Size m) = size $ floorToOdd $ n - m
    (Size n) * (Size m) = size $ n * m
    signum = const minBound
    abs = id
    fromInteger = size . fromInteger

size :: Int -> Size
size i
    | i `elem` [9,11..59] = Size i
    | otherwise = errorWithoutStackTrace "Size can only be from [9,11..59]!"

floorToOdd :: Int -> Int
floorToOdd x = x - (x + 1) `mod` 2

tree :: Size -> String
tree n@(Size n') = intercalate "\n" $ map ($ n) [leaves, trunk]
    where
        fill x = replicate ((n' - x) `div` 2) ' '
        leaves (Size n) = intercalate "\n" $ map (\x -> concatMap ($ x) [fill, flip replicate '#']) [1,3..n]
        trunk (Size n) = intercalate "\n" $ replicate (n `div` 3) $ concatMap ($ floorToOdd (n `div` 3)) [fill, flip replicate '|']

main :: IO ()
main = do 
    putStrLn $ tree 25
    putStrLn "Kellemes ünnepeket és boldog új évet kívánok!"