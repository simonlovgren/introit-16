+++
date = "2016-08-03T11:08:00+02:00"
menu = "latex"
module = "latex"
title = "Latex"

+++

*LaTeX* är ett *typsättningssystem* som används flitigt inom akademia för att skapa textdokument.

Till skillnad från program som Google Docs och Microsoft Word redigerar du dokument i en separat fil, vilket sedan används för att generera en fil redo för publicering.

## Innehåll

+ [Fördelarna med LaTeX](#fördelarna-med-latex)
	- [Fokus på innehåll](#fokus-på-innehåll)
	- [Konsekvent formatering](#konsekvent-formatering)
	- [Standarden för vetenskapliga rapporter](#standarden-för-vetenskapliga-rapporter)
+ [Skaffa LaTeX](#skaffa-latex)
	- [Skapa dokument online](#skapa-dokument-online)
	- [Använda lokalt](#använda-lokalt)
+ [Strukturen av LaTeX-projekt](#strukturen-av-latex-projekt)
	- [Filstruktur](#filstruktur)
	- [Dokumentets struktur](#dokumentets-struktur)
	- [Grundläggande syntax](#grundläggande-syntax)
+ [Påbörja ett LaTeX-dokument](#påbörja-ett-latex-dokument)
	- [Preamble](#preamble)
	- [Dokumentmiljön](#dokumentmiljön)
+ [Skriva ett LaTeX-dokument](#skriva-ett-latex-dokument)
	- [Strukturera text](#strukturera-text)
	- [Skapa en titel](#skapa-en-titel)
	- [Generera en innehållsförteckning](#generera-en-innehållsförteckning)
	- [Listor](#listor)
	- [Tabeller](#tabeller)
	- [Formler och ekvationer](#formler-och-ekvationer)
        + [Grundläggande matematisk syntax](#grundläggande-matematisk-syntax)
        + [Matematik i löpande text](#matematik-i-löpande-text)
        + [Ekvationer och beräkningar](#ekvationer-och-beräkningar)
	- [Grafik](#grafik)
	- [Referenser](#referenser)
	- [Importera text](#importera-text)
	- [Kommentera text](#kommentera-text)

## Fördelarna med LaTeX

Det finns ett antal fördelar med att skriva dokument i LaTeX.

### Fokus på innehåll

Eftersom du skriver materialet helt oberoende av hur det kommer se ut, kan du fokusera på att göra så bra som möjligt. Den estetiska biten, dvs radavstånd, fontstorlekar, etc., är helt abstraherad från detta och kan dessutom återanvändas i framtida rapporter.

### Konsekvent formatering

När det färdiga dokumentet genereras sker detta enligt dess inställningar. Du kommer alltså slippa problemet med att olika avsnitt skiljer sig i stil, eftersom hela dokumentet följer samma regler.

### Standarden för vetenskapliga rapporter

LaTeX gör det enkelt att skriva formler, abstrakt och referenser. Grekiska tecken blir inte mer än `$\Lambda$`. Abstrakt stiliseras lika enkelt som att skapa en sektion. Referenser genereras automatiskt med system som bibtex, så att du bara skriver in dina källor en gång samt vilken standard de ska representeras enligt.



## Skaffa LaTeX

Du kan antingen köra LaTeX online eller lokalt på din dator.


### Skapa dokument online

I dagsläget används oftast dessa online-redigerare:

+ [Overleaf](https://www.overleaf.com/)
    - Har stöd för editor-syntax, dvs kan bete sig som Emacs och Vim.
    - Stöd för inloggning via Google- och Twitterkonto.
    - Samarbete är gratis, men dokument kan inte "låsas" utan att betala
+ [ShareLaTeX](https://www.sharelatex.com/)
    - Snyggare gränssnitt än Overleaf

Dessa alternativ är mycket lätta att komma igång med, men är samtidigt mer krävande av datorn. Dessutom verkar de göra slut på batterier i rasande fart.

### Använda lokalt

För att installera ett TeX-system lokalt beror det på operativsystemet du använder:

+ Windows-användare kan välja mellan dessa:
    - [TeX Live](https://www.tug.org/texlive/windows.html) är den "officiella" versionen som även har större fokus på säkerhet.
    - [MikTeX](http://www.miktex.org/2.9/setup) är mer anpassad för Windows specifikt, vilket innebär att det *känns* mer som ett Windows-program (på gott och ont).
+ Mac OS X-användare rekommenderas använda [MacTeX](https://tug.org/mactex/)
+ För Linux beror det lite på vilken distribution du använder.
    - Ubuntu-baserade distributioner kan följa denna [guide](https://help.ubuntu.com/community/LaTeX)
    - För Arch-användare gäller [denna](https://wiki.archlinux.org/index.php/TeX_Live)
    - För Gentoo-användare gäller [denna](https://wiki.gentoo.org/wiki/TeX_Live)
    - För övriga hänvisar vi till respektive distribution för support.

I de flesta lokala installationer ingår det en textredigerare. Du kan dock redigera dokumenten i andra program, som Notepad, Vim, Emacs eller liknande.



## Strukturen av LaTeX-projekt

### Filstruktur

Varje dokument som skrivs med LaTeX har en `.tex`-fil, som ofta kallas för `main.tex`.
Beroende på storlek av projektet, kan denna fil antingen innehålla allt material, eller agera som ett skelett där exempelvis inställningar och/eller textavsnitt importeras.
Bilder och bibliografi brukar placeras separat.

När det slutgiltiga dokumentet genereras brukar många extra filer dyka upp. Dessa kan du normalt sett ignorera. Det rekommenderas att skapa en egen mapp för vardera nytt projekt.

### Dokumentets struktur

Huvudfilen inleds med en *preamble*, där inställningar gällande dokumentets stil, titel, författare och liknande brukar stå. Det som *alltid* finns med är inställningen `\documentclass`.

Därefter börjar delen som själva texten står i. Du känner igen detta genom att den börjar med raden `\begin{document}` och slutar med `\end{document}`

### Grundläggande syntax

Kommandon i LaTeX följer stilen `\kommando[alternativ,meralternativ]{inställning}`.
Ovannämnda är `\documentclass` är ett bra exempel.
För att skriva ett dokument av typen `article` med 11pt fontstorlek, för utskrift på A4, inleder du alltså med följande rad:

```latex
\documentclass[11pt,a4paper]{article}
```

Det finns många andra typer av dokument, som `book`, `report` och liknande, men i de flesta fall fungerar `article` utmärkt.

Delar som använder sig av särskild syntax, som tabeller, beräkningar och till och med hvudtexten, skapas med `\begin{miljö} ... \end{miljö}`. För att exempelvis göra en bit text i en låda skriver du följande:

```latex
Denna text är inte i en låda.

\begin{boxed}
Denna text är i en låda.
\end{boxed}

Denna text är inte heller i en låda.
```


## Påbörja ett LaTeX-dokument

Börja med att få upp ett tomt dokument.
Beroende på vilken tjänst du använder kan det komma med lite text ändå. Om du exempelvis valt Overleaf kommer dokumentet till en början se ut så här:

```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\begin{document}
(Type your content here.)
\end{document}
```

Detta är en bra grund, men vi kommer ändra på detta för att göra en noggrann genomgång av vad som händer.
Om du inte vill skriva detta själv finns ett kopierbart exempel i slutet av avsnittet.


### Preamble

*Preamble* är, som ovan nämnt, dokumentets inställningar. Det finns några praktiska rader som rekommenderas för dokument som skrivs i Sverige.

| Kommando  | Förklaring |
| --------- | ---------- |
| `\documentclass[12pt,a4paper]{article}` | Väljer dokumenttyp |
| `\usepackage[swedish]{babel}` | Ställa in dokumentets språk |
| `\usepackage[T1]{fontenc}`    | Förbättrar rendering av tecken som `å ä ö` |
| `\usepackage[utf8]{inputenc}` | Förbättrad tolkning av specialtecken |

`\usepackage` importerar helt enkelt ett *paket* för användning i ditt dokument. De används även för att lägga till extra kommandon, som särskilda matematiska tecken.

Om du skriver ett dokument på engelska kan du med fördel hoppa över `\usepackage[swedish]{babel}`, men det kan vara en god idé att behålla de andra paketen för exempelvis namn som "Björn".

Språkvalet ställer in automatiskt genererade ord, som "Innehåll", samt radbrytningar.


### Dokumentmiljön

Efter preamblen kan du börja skriva in själva innehållet i miljön `document`.

Ett komplett exempel följer nedan:

```latex
\documentclass[12pt, a4paper]{article}
\usepackage[swedish]{babel}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

\begin{document}
Dokumentets innehåll står här!
\end{document}
```


## Skriva ett LaTeX-dokument

Syntaxen kan tyckas lite skrämmande i början, men så fort man lär sig vad kommandona betyder är det mycket enkelt att förstå och använda sig av den.

Eftersom det finns otroligt många användningsområden för LaTeX är det inte möjligt att lära sig hur allt fungerar utantill. Det viktigaste i denna del är alltså att prova på de delar som är relevanta för din utbildning, så att du vet att du kan kolla upp och göra det som krävs när det väl behövs.


### Strukturera text

Du använder kommandona `\section{rubrik}`, `\subsection{underrubrik}` och `\subsubsection{underunderrubrik}` för att skapa rubriker. Dessa används sedan för att generera innehållsförteckning och skrivs i miljön `document`.

Om du inte vill ha numrerade rubriker lägger du till en stjärna enligt exemplet nedan:

```latex
\begin{document}

\section{Numrerad rubrik}
\subsection{Numrerad underrubrik}

\section*{Onumrerad rubrik}
\subsection*{Onumrerad underrubrik}

\end{document}
```


### Skapa en titel

Du lägger till kommandona `\title{Dokumentets titel}`, `\author{Författare}` och `\date{Datum}` för titel, författare respektive datum i preamble. Om du hoppar över att skriva datum kommer dagens att användas.

Därefter skriver du helt enkelt `\maketitle` där du vill ha titeln, förslagsvis direkt efter raden `\begin{document}`.

Ett exempel följer nedan. Notera att de irrelevanta delarna av preamblen är bortklippta.


```latex
\title{Titel}
\author{Författare}

\begin{document}
\maketitle

Dokumentets innehåll står här!
\end{document}
```

{{< figure src="/images/latex/titel.png" title="Enkel titel i LaTeX" >}}


### Generera en innehållsförteckning

Du lägger helt enkelt till kommandot `\tableofcontents` för att skapa en innehållsförteckning. 
Alla *numrerade* sektioner kommer då dyka upp i den.
Ibland krävs det att dokumentet genereras två gånger för att innehållsförteckningen ska bli korrekt.

Tänk på att det kan vara lite överflödigt för kortare texter.

{{< figure src="/images/latex/toc.png" title="Överflödig innehållsförteckning" >}}

### Listor

Den enklaste typen av lista gör du med miljön `itemize`, där varje inlägg påbörjas med `\item`

```latex
\begin{itemize}
    \item En grej
    \item En till grej
\end{itemize}
```

{{< figure src="/images/latex/itemize.png" title="Lista med itemize" >}}

För att göra nästlade listor påbörjar du en ny miljö i den befintliga.

Du kan även göra numrerade listor med miljön `enumerate`.

```latex
\begin{enumerate}
    \item En numrerad grej
        \begin{enumerate}
            \item En nästlad, numrerad grej
            \item En till nästlad, numrerad grej
        \end{enumerate}
    \item En till numrerad grej
\end{enumerate}
```

{{< figure src="/images/latex/enumerate.png" title="Nästlad lista med enumerate" >}}

För att skriva ordboksliknande listor använder du enklast miljön `description`. Varje inlägg skrivs då `\item[Term]`

```latex
\begin{description}
    \item[En grej] Grejens förklaring
    \item[En till grej] En till förklaring
\end{description}
```

{{< figure src="/images/latex/description.png" title="Lista med description" >}}


### Tabeller

Tabeller är på många sätt lättare att skriva än att läsa i den redigerade filen.

Du använder miljön `tabular` följt av specifikation för kolumnerna.
Dessa alternativ listas nedan:

| Alternativ | Förklaring |
| :--: | ---- |
| `l`  | vänster-justifierad kolumn |
| `c`  | centrerad kolumn |
| `r`  | höger-justifierad kolumn |
| `\|`  | separator med enkel linje |
| `\|\|` | separator med två linjer |

**TODO** fixa formatering i tabellen!

Väl i tabellen använder du `&` för att separera kolonner och `\\` för att avsluta en rad. Om du vill göra en linje mellan två rader använder du kommandot `\hline`

```latex
\begin{tabular}{| l c || r}
    Första kolumnen & Andra kolumnen        & Tredje kolumnen \\
    \hline
    Denna är vänsterjustifierad
                    & Denna är centrerad    & Denna är högerjustifierad \\
    Denna har en linje till vänster
                    & Två linjer till höger & Två linjer till vänster \\
\end{tabular}
```

{{< figure src="/images/latex/tabular.png" title="Du kan även göra fula tabeller i LaTeX" >}}

Notera att mellanslag och radbrytningar i den råa texten inte spelar någon roll. Därför kan du anpassa detta för att göra det så läsligt som möjligt för dig själv.
Lägg även märke till att inställningarna för tabellen skrivs inom måsvingar.


### Formler och ekvationer

För att använda matematik i LaTeX rekommenderas paketet `mathtools`. Du lägger till den genom att skriva

```latex
\usepackage{mathtools}
```

i preamblen.

I princip all tänkbar formatering som är relevant för matematik går att formatera i LaTeX. Faktum är att det var en av skälen till att det skapades.

I detta avsnitt är målet att visa grunderna, så att du kan förstå vad som pågår när du kollar upp avancerade saker enligt behov. Det täcker även material som krävs för de första kurserna inom de flesta vetenskapliga ämnen.

Wikibooks har en mycket mer omfattande guide [här](https://en.wikibooks.org/wiki/LaTeX/Mathematics).

#### Grundläggande matematisk syntax

Du använder samma tecken som i de flesta datorprogram, dvs `+ - / ^` för att skriva formler. Undantaget är för multiplikation. Du kan använda `\cdot`, t ex `2 \cdot 3` för att skriva $2 \cdot 3$.

+ Parenteser skrivs som vanligt, men måsvingar och hakparenteser kräver särskild formatering.
+ Grekiska tecken skrivs ut med backslash, som de flesta kommandon i LaTeX, t ex `\alpha`. För versaler inleder du kommandot med versal, t ex `\Alpha`.
+ För att gruppera exempelvis en potens, använder du `{}`. Exempelvis formateras $x^{2c}$ med `x^{2c}`.
+ Du kan även göra subskript med hjälp av `_`. För att visa $x_0$ skriver du alltså `x_0`.
+ Uppställda bråk görs med `\frac{täljare}{nämnare}`. Exempelvis generar du $\frac{a}{b}$ genom att skriva `\frac{a}{b}`


#### Matematik i löpande text

I löpande text skriver du matetmatisk syntax mellan två `$`. Det är även klokt att använda detta runt variabler och konstanter för att förtydliga att det är dessa du syftar på.

Om du exempelvis vill diskutera $\lambda_{\alpha/2}$ i din text skriver du `$\lambda_{\alpha/2}$`

#### Ekvationer och beräkningar

Den enklaste metoden är att skriva mellan `\[` och `\]`.

Du kan även använda miljön `align*`. Du kan då använda samma syntax som gäller för tabeller för att ställa upp beräkningar.


```latex
Funktionen

\[
    f(x) = 6x + 2
\]

kan beräknas enligt följande

\begin{align*}
    f(x) &= 2(3x + 1)   \\
         &= 2 \cdot 3x + 2 \cdot 1 \\
         &= 6x + 2
\end{align*}
```

{{< figure src="/images/latex/math.png" title="Uppställda ekvationer" >}}

### Grafik

För att använda grafik och bilder i LaTeX använder du paketet `graphicx`, samt mappen du placerar bilderna i.
Du gör detta genom att lägga till följande rader i preamble.

```latex
\usepackage{graphicx}
\graphicspath{ {bilder/}{flerbilder/} }
```
`{bilder/}` och {flerbilder/} syftar i detta fall på mapparna `bilder` respektive `flerbilder` som ligger i samma mapp som själva .tex-filen. Du kan självfallet använda vilken mapp du vill, men det är rekommenderat att den åtminstone ligger i samma mapp som dokumentet. Det avslutande snedstrecket är obligatoriskt.

Om du inte specificerar en mapp för bilderna kommer generatorn leta i samma mapp som .tex-filen.

För att därefter lägga in en bild i dokumentet skriver du `\includegraphics{bildnamn}`, utan filändelse. Du kan specificera storlek på bilden i kommandots alternativ: om du exempelvis vill lägga in bilden `foto.jpg` med halva textens bredd, skriver du `\includegraphics[width=0.5\textwidth]{foto}`.

Miljön `figure` låter dig även skapa bildtexter och referenser till dina bilder och diagram. Ett enkelt exempel följer nedan:

```latex
Se figur \ref{fig:foto1}.

\begin{figure}[h]
    \includegraphics[width=0.5\textwidth]{foto}
    \caption{Ett foto}
    \label{fig:foto1}
\end{figure}
```

+ Alternativet `h` för miljön specificerar att figuren ska placeras "här".
+ `\caption` skriver ut figurens index samt en bildtitel.
+ `\label` gör att du kan referera till bilden med kommandot `\ref`. LaTeX genererar då automatiskt olika index för varje figur, så du inte behöver ändra dessa själv om du exempelvis lägger till en ny bild tidigare i texten.


{{< figure src="/images/latex/figure.png" title="Figur i TeX" >}}

### Referenser

LaTeX har stöd för flera omfattande system för att skriva referenser. Denna sektion visar mest hur mycket arbete som krävs för att använda sig av det i framtida rapporter.

Referenser skriver du med hjälp av `bibtex` eller `biblatex`, där den senare är lättare att använda.

Du börjar med att lägga till paketet och en fil med referenser i preamble:

```latex
\usepackage{biblatex}
\graphicspath{referenser.bib}
```

`referenser.bib` skrivs enligt följande syntax:
```latex
@misc{MultiRust,
title = {{Multirust}},
author = {Brian Anderson and others},
howpublished = {\url{https://github.com/brson/multirust}},
note = {visited on 2016-04-27}
}

@book{Tanenbaum2006,
author={Tanenbaum, Andrew S. and Woodhull, Albert S.},
title={Operating systems : design and implementation},
publisher={Pearson Prentice Hall},
address={Upper Saddle River, NJ},
year=2006,
edition={3. ed.},
ISBN={0-13-142938-8 (korr.) (inb.)},
keywords={Operativsystem},
}
```

För att därefter citera en text skriver du helt enkelt `\cite{referens}`, exempelvis `\cite{MultiRust}`.

För att slutligen skriva ut bibliografin skriver du kommandot `\printbibliography`.

Vissa program och paket är inte kompatibla med vissa standarder. Exempelvis kan du inte använda IEEE-standarden med biblatex i Overleaf, men däremot ska det fungera med TeX-Live om du har en ny version.


### Importera text

Du kan använda kommandona `\input` och `\include` för att lägga in text från andra filer.

+ `\include{tex-fil}` används för att importera exempelvis kapitel i dokumentet. Den fungerar inte i preamblen och börjar alltid på en ny sida. Du skriver in filnamnet utan ändelse.
+ `\input{filnamn.tex}` läser in rå text från den importerade filen. Den fungerar var som helst i dokumentet och är särskilt praktisk för att abstrahera bort en lång preamble.

### Kommentera text

Du kan göra kommentarer som ignoreras av renderingen med `%`.
Det är smidigt för att göra markörer som "TODO" eller tillfälligt ta bort delar av dokumentet när du experimenterar.

```latex
Detta syns i det färdiga dokumentet!

% Detta syns inte i det färdiga dokumentet!
```
