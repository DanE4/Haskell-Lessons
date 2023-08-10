module Homework2 where
    -----------------------------------------------------------------------------
    isSmallPrime :: Int -> Bool
    isSmallPrime 5 = True
    isSmallPrime 7 = True
    isSmallPrime 11 = True
    isSmallPrime 13 = True
    isSmallPrime _ = False
    -----------------------------------------------------------------------------
    equivalent :: Bool -> Bool -> Bool
    equivalent True True = True
    equivalent False False = True
    equivalent _ _ = False
    -----------------------------------------------------------------------------
    implies :: Bool -> Bool -> Bool
    implies True False = False 
    implies _ _ = True
    -----------------------------------------------------------------------------
    --első számláló
    --második nevező
    add :: (Int, Int) -> (Int, Int) -> (Int, Int)
    add (x,y) (z,q) = (((q)*x + (y)*z),y*q)
    --add (x,y) (z,q) = ((div(y*q) y)*x + (div(y*q)q)*z,y*q)

    multiply :: (Int, Int) -> (Int, Int) -> (Int, Int)
    multiply (x,y) (z,q) = (x*z,y*q)

    divide :: (Int, Int) -> (Int, Int) -> (Int, Int)
    divide (x,y) (z,q) = (x*q,y*z)
