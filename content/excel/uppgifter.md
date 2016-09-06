+++
date = "2016-07-25T10:45:37+02:00"
menu = "excel"
module = "excel"
title = "Excel/Uppgifter"

lastmod = "2016-08-25T13:52:12+02:00"
+++

## Innehåll


+ [Mål](#mål)
+ [Material som krävs](#material-som-krävs)
+ [Uppgift](#uppgift)
+ [Inlämning](#inlämning)

## Mål

I denna uppgift ska du göra en graf.

## Material som krävs

+ Microsoft Office Excel
    + Uppgiften kräver trendlinjer, vilket inte är möjligt att göra
        i online-versionen.
    + Du kan använda Excel i Uppsala Universitets datasalar med Windows 7.
    + Om du har ett annat program som kan skapa kompatibla kalkylark kan du
        använda det.



## Uppgift

Denna uppgift går ut på att skapa en graf.

Du börjar med att skriva ditt användarnamn för studentkontot i cell A1.
Fyll därefter i B1:D11 med värden enligt citatet nedan.

``` excel
x	Fib	2^x
1	1	2
2	1	4
3	2	8
4	3	16
5	5	32
6	8	64
7	13	128
8	21	256
9	34	512
10	55	1024
```

Därefter gör du ett *sambandsdiagram* (*scatter plot*) med värdena för $x$ på den liggande axeln och
resultaten av funktionerna på den stående.

Grafen ska innehålla följande:

+ En titel
+ Datapunkter
+ Trendlinjer (exponentiella)
+ Etiketter för vardera axel
+ Etiketter datapunkter samt trendlinjer
+ Regressionsanalys ($R^2$) för vardera trendlinje, placerad så att den är
    läslig

Du kan hänvisa till figuren för hur grafen ska se ut.
{{< figure src="/images/excel/excel-uppgift.png" title="Resulterande graf" >}}


## Inlämning

Spara den resulterande excelfilen med namnet 
`abcd1234-excel.xlsx` där du ersätter i `abcd1234` med användarnamnet för ditt
studentkonto.

Om du använder ett annat program än Excel måste det vara sparat i sådant format
att det går att öppna med Excel.
