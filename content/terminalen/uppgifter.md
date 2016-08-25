+++
date = "2016-08-01T13:47:14+02:00"
menu = "terminalen"
module = "terminalen"
title = "Terminalen/Uppgifter"

lastmod = "2016-08-25T13:52:12+02:00"
+++

## Innehåll


+ [Mål](#mål)
+ [Detta behöver du](#detta-behöver-du)
+ [Uppgift](#uppgift)
	+ [Del 1: Skapa mappar](#del-1-skapa-mappar)
	+ [Del 2: Skapa, kopiera och döp om en textfil](#del-2-skapa-kopiera-och-döp-om-en-textfil)
	+ [Del 3: Använda omdirigering](#del-3-använda-omdirigering)
	+ [Del 4: Komprimera mappen med tar](#del-4-komprimera-mappen-med-tar)
+ [Inlämning](#inlämning)

## Mål

Efter att du blivit godkänd på denna uppgift kommer du att känna till hur du från terminalen:

+ skapar en mapp
+ skapar, kopierar och döper om en textfil
+ dirigerar om in-/utmatning med hjälp av omdirigering (*I/O-redirection*)
+ komprimera en mapp till ett filarkiv.


## Detta behöver du

Allt du behöver för att genomföra uppgiften finns redan installerat på
universitetets Linux-system. 

Om du väljer att utföra uppgiften på något annat sätt, till exempel på en privat
dator med Linux, behöver du tillgång till följande:

+ En POSIX-kompatibel terminal.
    + Information om terminalen i Windows finns i [infosidorna för terminalen](../#öppna-en-terminalemulator)
    + Uppgifterna går alltså även att lösa med *zsh*
+ Programmen `tar`, `grep`, `cp`, `curl` samt en texteditor, t ex
    `nano`. 
    + Dessa ingår i princip alltid med Linux-distributioner samt Mac OS X.

Inlämning sker via Studentportalen. För detta krävs ett studentkonto.


## Uppgift

Materialet som tas upp i uppgiften diskuteras på [sidan med information om terminalen](../).

### Del 1: Skapa mappar

1. Använd `mkdir` för att skapa en mapp med namnet `terminal_uppgift_abcd1234`,
   där `abcd1234` ska ersättas med användarnamnet för ditt studentkonto.
2. Skapa mappen `deluppgift_1` under denna mapp.
    + Du kan byta till mappen `terminal_uppgift_abcd1234` med `cd` och skapa
        mappen därefter.
    + Du kan även skriva `terminal_uppgift_abcd1234/deluppgift_1` som argument
      till kommandot `mkdir`.
    + Tab-komplettering gör denna del mycket smidigare!
3. Använd `cd` för att gå in i mappen `deluppgift_1`.

Katalogstrukturen ska nu se ut så här:

``` shell
.
└── terminal_uppgift_abcd1234
    └── deluppgift_1
```

*Tips: Du kan använda kommandot `tree`, om du har det installerat, för att få
denna output när du står i mappen ovanför `terminal_uppgift_abcd1234`*


### Del 2: Skapa, kopiera och döp om en textfil

1. Skapa filen `textfil.txt` med raden `En textfil` som enda innehåll.
    + Du kan exempelvis använda `nano`, men vilken editor som helst ska fungera
        för detta.
    + Du kan även dubbelkolla att den skapade textfilen blev rätt med kommandot
        `cat textfil.txt`. Terminalen ska då skriva ut raden du har skrivit
        och inget annat.
2. Kopiera mappen `deluppgift_1` till en ny mapp med namnet `deluppgift_2`.
    Denna ska ligga i mappen ovanför.
    + Du använder enklast `cd ..` för att gå ett steg upp i katalogstrukturen.
    + Flaggan `-r` används med `cp` för att kopiera en mapp.
3. Gå in i mappen `deluppgift_2`.
4. Döp om `textfil.txt`, i denna mapp, till `hittad_rad.txt`
    + Detta gör du enklast med `mv`

Katalogstrukturen ska nu se ut så här:

``` shell
.
└── terminal_uppgift_abcd1234
    ├── deluppgift_1
    │   └── textfil.txt
    └── deluppgift_2
        └── hittad_rad.txt
```


### Del 3: Använda omdirigering

1. Ladda ner filen `jobbig_textfil.txt` {{< extlink title="från denna länk"
link="/resources/jobbig_textfil.txt" >}}. och lägg den i mappen
   `deluppgift_2`
    + Du kan använda kommandot `curl` för att göra detta
        direkt i terminalen: `curl -o  <filnamn att spara till> <url-länk>` laddar ner filen i den angivna länken och sparar som det angivna filnamnet.
    + De flesta terminalemulatorer låter dig klistra in text med
        `<Ctrl>+<Shift>+V`, `<Shift>+<Insert>` eller klick med musens
        mittenknapp.
2. Använd pipes (`|`) och `grep` för att få fram raden (eller raderna) som innehåller `Hitta mig`, givet kommandot `cat textfil.txt`
    + Grep förstår citattecken
3. Upprepa kommandot ovan, men addera fil-output för att *lägga till* (`>>`) raden i `hittad_rad.txt`.
4. Använd `rm` för att radera `jobbig_textfil.txt`.


`cat hittad_rad.txt` ska nu visa något i stil med följande:

``` shell
En textfil
Hitta mig! (denna text ska se annorlunda ut)
```


### Del 4: Komprimera mappen med tar

1. Byt katalog till den ovanför `terminal_uppgift_abcd1234`.
2. Använd `tar` för att komprimera katalogen `terminal_uppgift_abcd1234` till filen
   `abcd1234_terminal.tar.gz`, där du ersätter `abcd1234` med användarnamnet för ditt studentkonto.
    + För att komprimera till gzip och skriva ut alla inkluderade filer och mappar använder du flaggorna `-cvzf`.

Terminalen ska då visa, förutsatt användningen av flaggan `-v` följande:

``` shell
terminal_uppgift_abcd1234/
terminal_uppgift_abcd1234/deluppgift_1/
terminal_uppgift_abcd1234/deluppgift_1/textfil.txt
terminal_uppgift_abcd1234/deluppgift_2/
terminal_uppgift_abcd1234/deluppgift_2/hittad_rad.txt
```

Kontrollera vilka filer arkivet innehåller med hjälp av kommandot `tar` och
flaggorna `f` och `t`, dvs skriv `tar -tf abcd1234_terminal.tar.gz` i terminalen
och tryck enter. 

## Inlämning

Ladda upp tar-filen du skapade i uppgiften till Studentportalen.
