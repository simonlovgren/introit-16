+++
date = "2016-07-25T10:45:37+02:00"
menu = "excel"
module = "excel"
title = "Excel/Infosidor"

+++

*Kalkylark* används för att sammanställa och manipulera siffror i form av beräkningar och statistik.
De mest kända programmen för detta är:

+ [OpenOffice.org](https://www.openoffice.org) Öppen källkod, fungerar på de flesta plattformar
+ [Google Sheets](https://docs.google.com/spreadsheets/) Gratis, kräver Google-konto, fungerar via de flesta webbläsare
+ [Microsoft Excel](https://products.office.com/en-us/excel)
    + Gratis online-version via Dropbox eller Office 365, kräver konto i dessa, fungerar via de flesta webbläsare *(har ej stöd för trendlinjer)*
    + Betalversion med löpande månadskostnad eller engångskostnad. Fungerar endast för Microsoft Windows och Mac OS X. En äldre version [finns tillgänglig](http://www.it.uu.se/datordrift/programvara/mswin) i Windows-datasalarna.
    + Microsoft har börjat tillåta gratis nedladdning av Office för anställda och studenter vid universit, men detta är för närvarande inte möjligt för studerande i Uppsala Universitet.

Det mest etablerade av dessa är Microsoft Excel, vilket kommer diskuteras på denna sida.
Du kan använda någon av Windows-datasalarna om du inte vill skaffa ett konto hos Microsoft Live.


### Innehåll

- [Komma igång](#komma-igång)
- [Inmatning](#inmatning)
- [Funktioner](#funktioner)
    + [Manuell inmatning](#manuell-inmatning)
    + [Grafisk inmatning](#grafisk-inmatning)
    + [Avancerade funktioner](#avancerade-funktioner)
- [Grafer](#grafer)
    + [Redigering](#redigering)
    + [Trendlinjer och regressionsanalys](#trendlinjer-och-regressionsanalys)



## Komma igång

Öppna [denna länk](https://office.live.com/start/Excel.aspx) och logga in med ett Microsoft Live-konto.

Välj *blank page* för att bemötas av följande sida:
{{< figure src="/images/excel/excel-start.png" title="Excel vid start" >}}

Du kan nu börja skriva in siffror! Spara genom att klicka på *File*, längst upp till vänster.



## Inmatning

Excel har många *smarta funktioner* för att mata in siffror effektivt.
Du kan testa detta genom att skriva några tal ( *Enter* tar dig till nästa rad), markera dessa samt
klicka och dra musen neråt från det nedre högra hörnet.

{{< figure src="/images/excel/excel-quicknum.gif" title="Snabb inmatning" >}}



## Funktioner

Excel har stöd för många funktioner av varierande komplexitet.

### Manuell inmatning

För att visa manuell inmatning använder vi `SUM`,
Klicka på rutan du vill ha summan i, skriv därefter (i denna eller rutan strax över arket)

```
=SUM(A1:B11)
```
Där `A1:B11` innebär att omfånget är A1 till och med A11. Dessa värden representerar kolonn respektive rad.

Om du har siffror under att annat omfång är det bara att ändra dessa. Summan uppdateras automatiskt om du ändrar en siffra i omfånget.

{{< figure src="/images/excel/excel-sum.png" title="Beräkna summa" >}}


### Grafisk inmatning

En enklare metod, som kräver en någorlunda modern version av Excel, går till genom att välja *cell*,
klicka på *Insert* -> *Function*, välja funktion, därefter markera omfånget som funktionen beräknas och slutligen
trycka på *enter*.

{{< figure src="/images/excel/excel-stddev.gif" title="Standardavvikelse" >}}

Även i detta fall ligger siffrorna kvar.


### Avancerade funktioner

Du kan även skriva in mer komplicerade funktioner och formler.

+ Aritmetik görs med samma symboler som de flesta datorprogram, dvs `+ - * / ^` där `^` används för potenser.
+ Parenteser gäller enligt vanlig matematik.
+ Funktioner (som SUM, vilken beskrevs ovan) kan läggas in fritt.
+ Du kan använda celler som variabler, enligt syntaxen ovan.

{{< figure src="/images/excel/excel-advfunc.png" title="Komplicerade funktioner" >}}

I bilden har vi skrivit in `=SUM(B1:B11) + A11 * 3 + LOG(16,2)`.

Vi lägger alltså ihop summan av cellerna B1 till B11, värdet i A11 multiplicerat med 3 och
logaritmen av 16 i bas 2.

Därmed får vi resultatet av 11 + 11*3 + 4 vilket mycket riktigt blir 48.



## Grafer

En av de viktigaste användningsområdena för kalkylark är att generera grafer.
Genom att skriva in ett antal värden (siffrorna genererade med [random.org](https://www.random.org)) kan vi markera dessa och välja 
vilken presentation vi vill ha.

{{< figure src="/images/excel/excel-chart.gif" title="Enklare graf" >}}


### Redigering

Klicka på grafen och välj *Chart*, högst upp. Du kan nu byta typ av graf och ställa in
exempelvis titel och hur etiketter representeras.


### Trendlinjer och regressionsanalys

*Trendlinjer går, i dagsläget, inte att skriva in direkt i *Excel Online*. För detta krävs den nedladdade versionen.*

Målet med regressionsanalys är att, utifrån observerade data, skapa en funktion som beskriver den. Ett sätt att illustrera detta med är att använda *trendlinjer*.

När du klickat på en lämplig graf dyker verktygen *chart tools* upp i övre raden. Klicka på dem, följt av *layout* för att nå alternativet *trendlines*.

{{< figure src="/images/excel/excel-trendline-1.PNG" title="Menyalternativet trendlinje syns längst upp till vänster" >}}

Valet *more options* låter dig ställa in avancerade alternativ för trendlinjer.
Det låter dig exempelvis ställa in hur den ska beräknas, visa  R-kvadratvärdet, byta format, etc.

Du kan även nå detta fönster genom att högerklicka på redan befintliga trendlinjer och välja *options* **(verifiera detta!)**.

{{< figure src="/images/excel/excel-trendline-2.PNG" title="Inställningar för trendlinjer" >}}

Tänk på att det viktigaste med grafer är att göra de som tydliga som möjligt!
Genom att använda färger och andra inställningar kan du förtydliga linjerna och deras förhållande till datan de representerar.

{{< figure src="/images/excel/excel-trendline-3.PNG" title="Exempel på formatering" >}}

Trendlinjer går även att skapa med andra typer av grafer.

{{< figure src="/images/excel/excel-chart-alt.PNG" title="Exempel på formatering" >}}

Ett R-kvadratvärde som är nära 1 visar dess trovärdighet. Eftersom exempelfiguren använder slumpmässiga tal är det låga värdet rimligt.
