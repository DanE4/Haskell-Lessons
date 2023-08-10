Őrfeltételek , Rekurzió (Esetszétválasztás)
-------------------------------------------

Egy Fahrenheitben mért testhőmérsékletről döntsük el, hogy az adott illető lázas-e! A lázat 38 °C felett tekintjük, a Celsiusba való átváltáshoz, a Fahrenheit értékből vonjunk ki 32-őt, majd osszuk el 1,8-al!

`hasFever :: Int -> Bool`

Írjunk egy függvényt, amely összeszorozza egy lista összes pozitív elemét!

`positiveProduct :: (Num a, Ord a) => [a] -> a`

Adott egy régió, összes meteorológiai állomásának mérései. Rendezett 4-esekben tároljuk sorban a mérőállomás nevét, a hőmérsékletet, a szél sebességét és hogy az adott napon hányadik rögzített adatot küldi. Adjuk meg az első mérőállomás nevét, ahol több mint 110 km/h, azaz orkán erejű szél volt.

Ha nem volt sehol sem orkán erejű szél, az eredmény legyen üres String!

`mightyGale :: [(String, Int, Int, Int)] -> String`

    mightyGale [("Pest6", 23, 54, 2), ("Buda2", 21, 77, 5), ("KPest1", 19, 89, 1)] == ""
    mightyGale [("Kamut1", 19, 55, 1), ("Szentes2", 18, 112, 2), ("Cegled3", 18, 113, 5)] == "Szentes2"
    mightyGale [("Szergeny3", 23, 1, 1), ("Nagytevel1", 30, 12, 5), ("Himod4", 1, 130, 1)] == "Himod4"