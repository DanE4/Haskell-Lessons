module Lesson9 where
    type SimpleColour=String

    type String = [Char]
    hasRed :: [SimpleColour] -> Bool
    hadRed l = elem "red" l
    data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
    monday::Day
    monday = Monday

    instance Show Day where 
        show Monday = "Hétfő"
        show Tuesday = "Kedd"
        show Wednesday = "Szerda"
        show Thursday = "Csütörtök"
        show Friday = "Péntek"
        show Saturday = "Szombat"
        show Sunday = "Vasárnap"

    data SimpleColour = Cyan | Black | Pink

    instance Show SimpleColour where
        show Cyan = "Cián"
        show Black = "Fekete"
        show Pink = "Rózsaszín"
    
    instance Eq SimpleColour where
        (==) Cyan Cyan = True
        (==) Black Black = True
        (==) Pink Pink = True
        (==) _ _ = False
        
    eqality :: Eq a => a -> a -> Bool
    eqality = (==)

    data Person = Person { firstName :: String  
                     , lastName :: String  
                     , age :: Int  
                     , height :: Float  
                     , phoneNumber :: String  
                     , flavor :: String  
                     } deriving (Show) 
    guy :: Person
    guy = Person "John" " Smith" 24 179.6 "8645" "1956.12.12"
    --guy' = {firstName = "John", lastName = " Smith", age = 24, height = 179.6, phoneNumber = "8645", flavor = "1956.12.12"}
    data Colour = RGB Int Int Int | HSL Int Int Int Int 
    --newtype Lengtha = CM int
    instance Show Colour where
        show (RGB r g b) = "RGB(" ++ show r ++ "," ++ show g ++ "," ++ show b ++ ")"
        show (HSL s v) = "HSL(" ++ show h ++ "," ++ show s ++ "," ++ show l ++ ")"

    instance Eq Colour where
        (==) (RGB r1 g1 b1) (RGB r2 g2 b2) = r1 == r2 && g1 == g2 && b1 == b2
        (==) (HSL h1 s1 l1) (HSL h2 s2 l2) = h1 == h2 && s1 == s2 && l1 == l2
        (==) _ _ = False

    instance Ord Colour where
        (<=) (RGB r1 g1 b1) (RGB r2 g2 b2) = r1 +g1 +b1 <= r2 + g2 + b2
        (<=) (HSL h1 s1 l1) (HSL h2 s2 l2) = h1 + s1 + l1 <= h2 + s2 + l2
    
    data Direction = L|R deriving (Show)

    type DirectionList = [Direction]
     
    numofL :: DirectionList -> Int
    
     

