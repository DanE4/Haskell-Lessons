module Lesson2 where
    returnFirst::Char->Int->Char
    returnFirst a _ =a
    --figyelmen kívül hagyja az _  -n lévő paramétert

    --mintaillesztés
    --Joker 


    not'::Bool->Bool
    not' False=True
    not' True=False

    intPattern::Int->Int
    intPattern 5 = 2

    and'::Bool->Bool->Bool
    and' True True = True
    and' _ _ =False

    or'::Bool->Bool->Bool
    or' False False = False
    or' _ _ = True

    charPattern::Char -> Char
    charPattern 'b'='c'
    charPattern 'c'='b'


    --Tuples
    --(2,'a') vagy (,) 2 'a'
    {-
        parametrikus polimorfizmus amikor több féle 
        mindenre illeszkedik ()
        mindegyikre ugyan úgy
        pl (,) :: a->b->(a,b)

    -}

    {-
        adhock polimorfizmus 
        több típussal működik viszont máshogy van 
        le definiálva
        pl:
    -}
    --ADHOCK: minden typusra máshogy és máshogy
    identity::a->a
    identity x=x
    weirdAdd::Int->Integer->Int
    --nem jó : weirdAdd a b = a + b
    weirdAdd a b =a +fromInteger(b) 
    swap:: (a,b)->(b,a)
    swap(a,b)=(b,a)

    doubleTheTouple:: (a,b)->((a,b),(a,b))
    doubleTheTouple (a,b) = ((a,b),(a,b))

    doubleTheTouple' :: (a,b)->((a,b),(a,b))
    doubleTheTouple' x = (x,x)
    
    

