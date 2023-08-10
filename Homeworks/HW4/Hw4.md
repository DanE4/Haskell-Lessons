Házi feladat
============

A házi feladatot egy Homework4 nevű modulként kell beadni. Minden definiálandó függvényhez adjuk meg a hozzá tartozó típus szignatúrát is! A feladatok után a zárójelben lévő név azt jelzi, milyen néven kell definiálni az adott függvényt, kifejezést. A feladatok megoldása során törekedjetek arra, hogy a gyakorlaton tanult módszereket, megoldási meneteket használjátok. A megoldások során definiálhatunk segédfüggvényeket.

Rekurzió
--------

Az alábbi függvényeket rekurzió segítségével kell megoldani, tehát most ne használjatok listagenerátorokat sem.

Adjuk meg azt a függvényt, amely kiszámolja a lucas sorozat n-edik elemét! A lucas sorozat olyan mint a fibonacci sorozat (tehát a következő elem az előző kettő összege), annyi különbséggel, hogy a lucas sorozat 0. eleme a 2 és 1. eleme az 1. Nem kell a hatékonyság miatt aggódni, ha ki tudja köhögni a 26. elemet(esetleg pici gondolkodás után), akkor az már elég jó. Órán majd mutatok jóval gyorsabb módszereket hozzá. Tehát így néz ki a lucas sorozat első pár eleme: 2, 1, 3, 4, 7, 11, 18, 29, 47, 76 ..

`lucas :: Integer -> Integer`

Adjuk meg azt a függvényt, amely eldönti egy listáról, hogy szerepel-e benne a 0!

`hasZero :: [Int] -> Bool`

Adjuk meg azt a függvényt, amely egy lista összes elemét megszorozza kettővel!

`doubleAll :: [Int] -> [Int]`

Adjuk meg azt a függvényt, amely a kapott két listáról eldönti, hogy az első hosszabb-e, mint a második! Feltételezhetjük, hogy legalább az egyik lista mindig véges hosszú. Viszont ügyeljünk arra, hogy minden ilyen esetben termináljon a függvényünk. `isLonger :: [a] -> [b] -> Bool`