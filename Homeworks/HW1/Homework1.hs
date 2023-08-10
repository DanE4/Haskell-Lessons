--Feladat:
{-


-}
module Homework1 where
    -----------------------------------------------------------------------------------------
    intExpr1:: Int
    intExpr1=1
    intExpr2::Int
    intExpr2=2
    intExpr3::Int
    intExpr3=3

    boolExpr1::Bool
    boolExpr1=True
    boolExpr2::Bool
    boolExpr2=False
    boolExpr3::Bool
    boolExpr3=True&&False
    -----------------------------------------------------------------------------------------
    {-
     27 malaca és 4 disznóólja
     egy ólba több malac is elfér, és minden ólban ugyanannyi malacnak kell lennie
     -}
     --kifejezés ==   asd::Int
     
    homelessPigs::Int
    homelessPigs = mod 27 4

    canFitAll:: Bool
    canFitAll = homelessPigs==0

    -----------------------------------------------------------------------------------------
    
    inc::Int->Int
    inc x = x + 1

    double::Int->Int
    double x= x*2

    triple::Int->Int
    triple x= x*3

    twentyone1::Int
    twentyone1= inc(inc(inc(triple(triple(double 1)))))

    twentyone2::Int
    twentyone2= inc(double(double(inc(double(double 1)))))

    twentyone3::Int
    twentyone3= inc(inc(inc(triple(double(inc(inc 1))))))

    twentyone4::Int
    twentyone4= triple(inc(double(triple 1)))

    twentyone5::Int
    twentyone5=inc(double(inc(inc(double(double(double 1))))))
    -----------------------------------------------------------------------------------------
    cmpRem7Rem11::Int->Bool
    cmpRem7Rem11 x= (mod x 7)>(mod x 11)
    -----------------------------------------------------------------------------------------
    foo::Bool-> Int-> Bool
    foo x y= x == (y == 1)

    bar::Int-> Bool-> Bool
    bar x y= foo y x



