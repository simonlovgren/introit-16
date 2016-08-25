+++
date = "2016-08-03T11:08:00+02:00"
menu = "latex"
module = "latex"
title = "Latex/Uppgifter"

lastmod = "2016-08-25T13:52:12+02:00"
+++

## Innehåll


+ [Mål](#mål)
+ [Detta behöver du](#detta-behöver-du)
+ [Uppgift](#uppgift)
	+ [Del 1: skapa ett grundläggande dokument](#del-1-skapa-ett-grundläggande-dokument)
	+ [Del 2: Ladda in paket](#del-2-ladda-in-paket)
	+ [Del 3: Använda enkla kommandon för att skapa en titel](#del-3-använda-enkla-kommandon-för-att-skapa-en-titel)
	+ [Del 4: Miljöer med *enumerate*](#del-4-miljöer-med-enumerate)
	+ [Del 5: Korrigera icke-fungerande formatering](#del-5-korrigera-icke-fungerande-formatering)
	+ [Slutgiltigt dokument](#slutgiltigt-dokument)
+ [Inlämning](#inlämning)

## Mål

Efter att du blivit godkänd på denna uppgift kommer du att känna till hur du:
 
- skapar ett LaTeX-dokument som går att rendera (till exempel visa som PDF)
- lägger till paket i preamble
- använder grundläggande kommandon för att generera en titel
- använder miljöer (*environments*)
- felsöker och lagar icke-fungerande LaTex-kod.


## Detta behöver du 

Det är starkt rekommenderat att du använder {{< extlink
link="https://www.overleaf.com" title="Overleaf" >}} men om du föredrar någon
annan metod behöver du:
 
+ en LaTeX-kompatibel editor
+ möjlighet att rendera PDF-filer
+ tillgång till paketen *babel*, *fontenc*, *inputenc*.
    + De flesta kompletta LaTeX-distributioner har dessa inbyggda.

Inlämning för alla uppgifter sker via Studentportalen. För detta krävs ett studentkonto.


## Uppgift

Materialet som tas upp i uppgiften diskuteras på [infosidorna för latex](../)

### Del 1: skapa ett grundläggande dokument

1. Öppna din favorit-editor.
2. Skapa ett tex-dokument av typen `article` med alternativen `12pt, a4paper`.
3. Lägg in början och slut för miljön `document` med hjälp av kommandona
   `\begin` och `\end`
4. Skriv "Text" i miljön `document`

Vid det här laget ska dokumentet kunna renderas för att skapa en PDF-fil.
Ordet "Text" ska stå i det renderade dokumentet.

### Del 2: Ladda in paket

1. Använd `\usepackage` för att ladda in `babel` med alternativet `swedish`
2. Använd `\usepackage` för att ladda in `fontenc` med alternativet `T1`
3. Använd `\usepackage` för att ladda in `inputenc` med alternativet `utf8`
4. Använd kommandot `\tableofcontents` i miljön `document`
    + Eftersom dokumentet saknar sektioner kommer bara texten "Innehåll"
        renderas
    + `babel` gör att denna text renderas på svenska.

Om dokumentet fortfarande renderas utan problem har du tillgång till dessa
paket. Om inte har du troligen gjort fel, eller råkat använda en minimal
installation av LaTeX.


### Del 3: Använda enkla kommandon för att skapa en titel

1. Skriv följande 3 kommandon i preamble:
    + Använd `\title` för att skriva in ditt användarnamn för *studentkontot* som
   titel.
    + Använd `\author` för att skriva in ditt *riktiga* namn som författare.
    + Använd `\date` för att skriva in datumet då du påbörjar detta dokument.
2. Skriv kommandot `\maketitle` direkt efter `\begin{document}`.

En titel ska nu dyka upp när du renderar dokumentet.


### Del 4: Miljöer med *enumerate*

1. Skapa en numrerad lista genom att skriva `\begin{enumerate}` följt av
   `\end{enumerate}`. Detta ska finnas *i* miljön `document`
2. Använd `\item` för att skapa följande punkter:
    + Första punkten
    + Andra punkten
    + Tredje punkten

När dokumentet renderas ska du nu kunna se en numrerad lista.

{{< figure src="/images/latex/latex-uppgift-enumerate.png" title="Numrerad lista" >}}

### Del 5: Korrigera icke-fungerande formatering

Kopiera och klistra in följande, trasiga, kodblock:

``` tex
\begin{tabular}{| c | c |   | c |}
     hline
    A   &   B   & AND   & OR    \\
    \hline
    T   &   T   & T     & T     \\
    T   &   F   & F       T     \\
    F   &   T   & F     & T      \
    F   &   F   & F     & F     \\
    \hline

```

Det saknas 4 tecken och ett kommando.
Lös detta så att dokumentet ser ut som i bilden. Notera att den tredje kolumnen
har centrerad text.

{{< figure src="/images/latex/latex-uppgift-tabell.png" title="Slutgiltig tabell" >}}

Ledning: 

+ Om du fastnar kan du utgå från felmeddelande som uppstår när du försöker rendera filen.
+ Räkna antalet kolumner


### Slutgiltigt dokument

PDF:en ska nu ha en sida med titel, raden "text", en numrerad lista och en
tabell. Du kan använda bilden nedan som referens.

{{< figure src="/images/latex/latex-uppgift-klar.png" title="Färdig sida" >}}


## Inlämning

Döp om den slutgiltiga PDF:en till `abcd1234-latex.pdf`, där du ersätter
`abcd1234` med  användarnamnet för ditt studentkonto.
Ladda upp filen i Studentportalen.
