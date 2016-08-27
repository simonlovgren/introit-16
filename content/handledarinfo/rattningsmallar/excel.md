+++
date = "2016-08-04T13:06:20+02:00"
menu = "handledarinfo"
module = "excel"
title = "Rättning Excel"

lastmod = "2016-08-25T13:52:12+02:00"
+++


Uppgiften går ut på att skapa en graf med vissa element givet en tabell med
värden.

### För att eleven skall bli godkänd krävs:

1. Filnamnet innehåller elevens student-ID **och**
  student-ID finns i cell A1
2. Filen ska gå att öppna i någon modern version av excel.
    + Notera att även om det inte går at redigera/skapa samma grafer i Office
        365 som i desktopversionen, så går det fortfarande att *se* dem.
3. Cellerna B1:C11 ska innehålla värdena i tabellen som visas [längre ned](#given-tabell)
    + Notera att det helt enkelt är värdena för fibonacci och $x^2$, så det
        borde vara lätt att snabbt känna igen fel
4. **Grafen:** (referensbild finns [längre ned](#referensgraf) på denna sida)
    + Ska vara av typen *scatter plot* (dvs punkter som visar var datan
        hamnar).
    + Har punkter från två olika datamängder. Dessa ska vara någorlunda
        tydligt särskilda.
        + Gränsen för tydlighet får vara ganska låg. Exempelvis kan
            likadana färger kompenseras för med olika symboler (ex. cirklar och
            kvadrater för `fib` resp. `x^2`). Däremot går det *inte* bra att
            båda datamängder representeras av ex. svarta cirklar i samma
            storlek.
    + Trendlinje måste finnas och vara enligt exponentiell ökning.
        + Detta är ett *krav* från många av programansvariga som hört av sig
            till oss. Tyvärr medför det också att man faktiskt måste använda
            desktop-versionen av excel för att skapa filerna.
    + Regressionsanalys ($R^2$-värde) ska finnas för vardera regressionslinje.
        + Den bör ligga över 0.9 (vilket också bevisar att referenslinjer
        stämmer).
    + Etiketter ska finnas och tydligt förklara vad respektive står för. Vad
        som specifikt står är inte viktigt -- poängen är att studenterna ska
        kunna välja dessa så att de faktiskt förklarar vad de står för. De ni
        ska titta efter är:
        + Titel (ex. "Talföljder")
        + Stående axel (ex. "Resultat")
        + Liggande axel (ex. "x", "indata")
        + Datamängder (ex. "Fib" resp. "2^x")
        + Trendlinje (ex. "Trendlinje Fib" resp. "Trendlinje 2^x")

#### Given tabell:

```excel
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

#### Referensgraf:

{{< figure src="/images/excel/excel-uppgift.png" class="medium" title="Referensbild för grafen" >}}
