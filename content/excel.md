+++
date = "2016-07-25T10:45:37+02:00"
menu = "excel"
module = "excel"
title = "Excel"

lastmod = "2016-08-23T10:48:17+02:00"
+++

*Kalkylark* används för att sammanställa och manipulera {{< extlink
link="https://sv.wikipedia.org/wiki/Tal" title="tal" >}} i form av beräkningar och statistik.
De mest kända programmen för detta är:

+ [LibreOffice](https://www.libreoffice.org/)
    - Gratis
    - Öppen källkod
    - Fungerar på de flesta plattformar
+ [OpenOffice.org](https://www.openoffice.org)
    - Gratis
    - Öppen källkod
    - Fungerar på de flesta plattformar
+ [Google Sheets](https://docs.google.com/spreadsheets/)
    - Gratis
    - Kräver Google-konto (även detta är kostnadsfritt)
    - Fungerar via de flesta webbläsare
+ [Microsoft Excel](https://products.office.com/en-us/excel)
    - Online-version via Dropbox eller Office 365
        + Gratis
        + Kräver konto hos *Microsoft Live* (även detta är kostnadsfritt)
        + Fungerar via de flesta webbläsare
        + **Har ej stöd för trendlinjer**
    - Nedladdad version
        + Betalversion med löpande månadskostnad eller engångskostnad
        + Fungerar endast för Microsoft Windows och Mac OS X
        + En äldre version [finns tillgänglig](http://www.it.uu.se/datordrift/programvara/mswin) i [Windows-datasalarna](http://www.polacksbacken.uu.se/Utbildning/Datasalar/).
        + Microsoft har börjat tillåta gratis nedladdning av Office för anställda och studenter vid universitet, men detta är för närvarande inte möjligt för studerande i Uppsala universitet.

Det mest etablerade av dessa är *Microsoft Excel*, vilket kommer diskuteras på denna sida.
Du kan använda någon av [Windows-datasalarna](http://www.polacksbacken.uu.se/Utbildning/Datasalar/) om du inte vill skaffa ett konto hos *Microsoft Live*.


### Innehåll

- [Celler](#celler)
- [Komma igång](#komma-igång)
- [Inmatning](#inmatning)
- [Formler](#Formler)
    + [Manuell inmatning](#manuell-inmatning)
    + [Grafisk inmatning](#grafisk-inmatning)
    + [Avancerade funktioner](#avancerade-funktioner)
- [Grafer](#grafer)
    + [Redigering](#redigering)
    + [Trendlinjer och regressionsanalys](#trendlinjer-och-regressionsanalys)



## Celler

Kalkylprogram använder sig av rutnät, där vardera ruta kallas för *cell*, för
att lägga in tal och göra beräkningar med dem. Rutnätet delas upp i __kolonner__
(*column*, anges med bokstäver) och __rader__ (*row*, anges med {{< extlink
link="https://sv.wikipedia.org/wiki/Siffra" title="siffror" >}}).

Varje cell i en rad är på olika kolonner. 

{{< figure src="/images/excel/excel-row-3.png" title="Rad 3 i rutnätet" >}}

Varje cell i en kolonn är på olika rader. 

{{< figure src="/images/excel/excel-column-c.png" title="Kolonn C i rutnätet" >}}

För att referera till en specifik cell anges först rad direkt följd av
kolonn. På detta sätt refererar `C3` till cellen på rad `C` och kolonn `3` i rutnätet. 

{{< figure src="/images/excel/excel-cell-position-example.png" 
    title="I rutnätet befinner sig cell C3 i kolonn C, rad 3" >}}
 
För att beteckna ett antal närliggande celler används __omfång__. Ett omfång utgör
en rektangel av celler i rutnätet. Ett omfång definieras genom att ange cellerna i två
motstående hörn i rektangeln separerade av tecknet `:` (kolon).

{{< figure src="/images/excel/excel-range-example.png" title="Omfånget A1:C3" >}}

## Komma igång

Om du är i en av Uppsala universitets datasalar med Windows bör det finnas en
version av Excel installerad. Du kan då starta den som vanligt, efter att ha
loggat in med ditt studentkonto.

Du kan även använda ett Microsoft Live-konto för att använda Excel i din
webbläsare. Notera att denna version saknar stöd för trendlinjer.
Du kan hitta online-versionen med [denna länk](https://office.live.com/start/Excel.aspx).

Välj *blank page* för att bemötas av följande sida:
{{< figure src="/images/excel/excel-start.png" title="Excel vid start" >}}


Du kan nu börja skriva in siffror! Spara genom att klicka på *File*, längst upp till vänster.


## Inmatning

Excel har många *smarta funktioner* för att mata in siffror effektivt.
Du kan testa detta genom att skriva några tal ( *Enter* tar dig till nästa rad), markera dessa samt
klicka och dra musen neråt från det nedre högra hörnet för att skapa en
talserie baserad på de markerade talen.

{{< figure src="/images/excel/excel-quicknum.gif" title="Snabb inmatning" >}}



## Formler

I Excel är *formler* ett sätt att utföra beräkningar. Du kan exempelvis använda
rutan strax ovanför rutnätet, där det står $f_x$ till vänster, för att skriva
in vad som ska beräknas.

Du kan testa detta genom att markera en tom cell och skriva `3 + 5` i rutan.

Vidare kan formler använda sig av *funktioner*, vilka beter sig på ungefär
samma sätt som matematiska funktioner: de har *argument*, som ger indata, vilket
i sin tur ger ett *resultat*. Excel har ett stort antal inbyggda funktioner.

Genom att använda formler och funktioner kan du utföra komplicerade beräkningar
på kort tid. Det finns ett antal sätt att använda sig av dessa.


### Manuell inmatning

För att demonstrera manuell inmatning använder vi funktionen `SUM`. Som namnet
anger beräknar denna funktion summan av ett antal värden.

Innan du fortsätter, se till att du har några värden i omfånget `A1:B11`.

För att excel ska förstå att du vill få resultatet av en funktion i en ruta
måste du börja formeln med tecknet `=` (likhetstecken), följt av namnet på
funktionen samt eventuella argument vilka anges inom parenteser.

I detta exempel väljer vi att placera summan i rutan `A12`. Klicka på den och
skriv följande, efter vilket du trycker `<Enter>`:

```
=SUM(A1:B11)
```

I detta exempel är alltså funktionens namn `SUM`, medan argumentet är `A1:B11`

{{< figure src="/images/excel/excel-sum.png" title="Beräkna summa" >}}

Resultatet, vilket kommer synas i cellen när du är klar, är summan av talen
i omfånget `A1:B11`.

Testa att ändra några värden i omfånget `A1:B11` och notera hur summan i rutan
`A12` automatiskt uppdateras.


### Grafisk inmatning

Ett alternativ till manuell inmatning av funktioner är grafisk inmatning.
Notera att denna metod endast är tillgänglig i någorlunda moderna versioner av
Excel.

1. Klicka först på en cell.
2. Klicka därefter på *Insert* -> *Function*
3. Välj funktionen du vill använda
4. Markera därefter omfånget som funktionen ska appliceras på
5. Avsluta med att trycka på *enter*.

{{< figure src="/images/excel/excel-stddev.gif" title="Standardavvikelse" >}}


### Avancerade formler

Du kan även skriva in mer komplicerade funktioner och formler.

+ Aritmetik görs med samma symboler som de flesta datorprogram, dvs `+ - * / ^`, där `^` används för potenser.
+ Parenteser gäller enligt reflerna för vanlig matematik.
+ Funktioner (som SUM, vilken beskrevs ovan) kan läggas in och kombineras
    godtyckligt.
+ Du kan använda celler som variabler: se följande exempel.

{{< figure src="/images/excel/excel-advfunc.png" title="Notera att formeln syns i rutan över kalkylbladet" >}}

I figuren ovan har `=SUM(B1:B11) + A11 * 3 + LOG(16,2)` skrivits in i rutan
C12.

Vi lägger alltså ihop summan av cellerna B1 till B11, värdet i A11 multiplicerat med 3 och
logaritmen av 16 i bas 2.

Därmed får vi resultatet av $11 + 11*3 + 4$ vilket mycket riktigt blir 48.



## Grafer

En av de viktigaste användningsområdena för kalkylark är att generera grafer.
Genom att skriva in ett antal värden (siffrorna i exemplet nedan genererade med [random.org](https://www.random.org)) kan vi markera dessa och välja 
vilken grafisk presentation (graf) vi vill ha.

{{< figure src="/images/excel/excel-chart.gif" title="Enklare graf" >}}


### Redigering

Klicka på grafen och välj *Chart*, högst upp. Du kan nu byta typ av graf och ställa in
exempelvis titel och hur etiketter representeras.


### Trendlinjer och regressionsanalys

*Trendlinjer går, i dagsläget, inte att skriva in direkt i online-versionen av Excel. För detta krävs den nedladdade versionen.*

Målet med regressionsanalys är att, utifrån observerade data, skapa en funktion som beskriver den. Ett sätt att illustrera detta med är att använda *trendlinjer*.

När du klickat på en lämplig graf dyker verktygen *chart tools* upp i övre raden. Klicka på *layout* för att nå alternativet *trendline*.

{{< figure src="/images/excel/excel-trendline-1.PNG" title="Menyalternativet trendlinje syns längst upp till höger" >}}

Valet *more options* låter dig ställa in avancerade alternativ för trendlinjer.
Det låter dig exempelvis ställa in hur den ska beräknas, visa  R-kvadratvärdet, byta format, etc.
Du kan även nå detta fönster genom att högerklicka på redan befintliga trendlinjer och välja *format trendline* **(verifiera detta!)**.

{{< figure src="/images/excel/excel-trendline-2.PNG" title="Inställningar för trendlinjer" >}}

Tänk på att det viktigaste med grafer är att göra de som tydliga som möjligt!
Genom att använda färger och andra inställningar kan du förtydliga linjerna och deras förhållande till datan de representerar.

{{< figure src="/images/excel/excel-trendline-3.PNG" title="Exempel på trendlinjer" >}}

Trendlinjer går även att skapa med andra typer av grafer.

{{< figure src="/images/excel/excel-chart-alt.PNG" title="Exempel på formatering" >}}

Ett R-kvadratvärde som är nära 1 visar dess trovärdighet. Eftersom exempelfiguren använder slumpmässiga tal är det låga värdet rimligt.
