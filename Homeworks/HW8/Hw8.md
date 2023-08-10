8.HF
====

Oldjuk meg az alábbi feladatokat explicit rekurzió használata nélkül , magasabbrendü függvények segítségével !
--------------------------------------------------------------------------------------------------------------

### Ismétlődő elemeket tartalmazó lista tömörítése

Valósítsuk meg a A `compress` függvényt mely egymás után ismétlődő elemeket keresve tömöríti a paraméterként kapott listát!

`compress :: Eq a => [a] -> [(Int,a)]`

    Tesztek:
    compress "abbccccb" == [(1, 'a'), (2, 'b'), (4, 'c'), (1, 'b')]
    compress (sort "abrakadabra") == [(5, 'a'), (2, 'b'), (1, 'd'), (1, 'k'), (2, 'r')]
    

_Segítség. Használhatjuk a [group](http://zvon.org/other/haskell/Outputlist/group_f.html) függvényt._

### Kitömörítés

Valósítsuk meg a A `decompress` függvényt mely a `compress` függvény inverze , azaz compresselt listát vissza kibont eredeti állapotára! `decompress :: Eq a => [(Int,a)] -> [a]`

    Tesztek:
    decompress [(1,'a'),(2,'b'),(4,'c'),(1,'b')]  == "abbccccb"
    decompress [(5, 'a'), (2, 'b'), (1, 'd'), (1, 'k'), (2, 'r')] == "aaaaabbdkrr"
    

_Segítség. Használhatjuk a [concat](http://zvon.org/other/haskell/Outputprelude/concat_f.html) és [replicate](http://zvon.org/other/haskell/Outputprelude/replicate_f.html) függvényeket._

### Kezdőbetűk

Valósítsuk meg a A `firstLetters` függvényt mely visszaaddja egy név kezdöbetüit

`firstLetters :: String -> String`

    Tesztek:
    firstLetters "Jim Carrey" == "J C"
    firstLetters "Ilosvai Selymes Péter" == "I S P"
    

_Segítség. Használhatjuk a [words](http://zvon.org/other/haskell/Outputprelude/words_f.html) és [unwords](http://zvon.org/other/haskell/Outputprelude/unwords_f.html) függvényeket._