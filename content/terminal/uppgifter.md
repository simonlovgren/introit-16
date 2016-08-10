+++
date = "2016-08-01T13:47:14+02:00"
menu = "terminal"
module = "terminal"
title = "Terminal/Uppgifter"

+++

## Innehåll


+ [Mål](#mål)
+ [Material som krävs](#material-som-krävs)
+ [Uppgift](#uppgift)
	+ [Del 1: Skapa mappar](#del-1-skapa-mappar)
	+ [Del 2: Skapa, kopiera och döp om en textfil](#del-2-skapa-kopiera-och-döp-om-en-textfil)
	+ [Del 3: Använda omdirigering](#del-3-använda-omdirigering)
	+ [Del 4: Komprimera mappen med tar](#del-4-komprimera-mappen-med-tar)
+ [Inlämning](#inlämning)

## Mål
För att klara av denna uppgift ska du göra följande:

+ Skapa en mapp
+ Skapa, kopiera och döpa om en textfil
+ Dirigera om in-/utmatning med hjälp av omdirigering (*I/O-redirection*)
+ Komprimera en mapp med till en fil


## Material som krävs
+ En POSIX-kompatibel terminal
    + Information om terminalen i Windows finns i [infosidorna för terminalen](../#öppna-en-terminalemulator)
    + Uppgifterna går alltså även att lösa med *zsh*
+ Programmen `tar`, `grep`, `cp`, `lspci` samt en texteditor, t ex
    `nano`. 
    + Dessa ingår i princip alltid med Linux-distributioner.

## Uppgift

### Del 1: Skapa mappar

1. Använd `mkdir` för att skapa en mapp med namnet `terminal_uppgift`.
2. Skapa mappen `deluppgift_1` under denna mapp.
3. Använd `cd` för att gå in i mappen `deluppgift_1`.

Katalogstrukturen ska nu se ut så här:

``` shell
.
└── terminal_uppgift
    └── deluppgift_1
```

*Tips: Du kan använda kommandot `tree`, om du har det installerat, för att få
denna output när du står i mappen ovanför `terminal_uppgift`*



### Del 2: Skapa, kopiera och döp om en textfil

1. Skapa filen `textfil.txt` med raden `Mitt grafikkort:`.
    + Du kan exempelvis använda `nano`, men vilken editor som helst ska fungera
        för detta.
    + Du kan även dubbelkolla att den skapade textfilen blev rätt med kommandot
        `cat textfil.txt`. Terminalen ska då skriva ut raden du har skrivit
        och inget annat.
2. Kopiera mappen `deluppgift_1` till en ny mapp med namnet `deluppgift_2`.
    Denna ska ligga i mappen ovanför.
    + Du använder enklast `cd ..` för att gå ett steg upp i katalogstrukturen.
    + Flaggan `-r` används med `cp` för att kopiera en mapp.
3. Gå in i mappen deluppgift_2.
4. Döp om `textfil.txt`, i denna mapp, till `vga_ctrl.txt`
    + Detta gör du enklast med `mv`

Katalogstrukturen ska nu se ut så här:

``` shell
.
└── terminal_uppgift
    ├── deluppgift_1
    │   └── textfil.txt
    └── deluppgift_2
        └── vga_ctrl.txt
```


### Del 3: Använda omdirigering

1. Använd pipes (`|`) och `grep` för att få fram raden (eller raderna) som innehåller `VGA`, givet kommandot `lspci`
    + `lspci` skriver ut hårdvara som registrerats av linux-systemet. Om du
        inte har ett grafikkort eller inte vill att vi ska se vilken
        tillverkare du har, kan du använda `ssh` för att genomföra detta på
        skolans UNIX-datorer (vilka ska visa samma enhet för alla användare).
2. Upprepa kommandot ovan, lägg till fil-output för att *lägga till* (`>>`) raden i `vga_ctrl.txt`.


`cat vga_ctrl.txt` ska nu visa något i stil med följande:

``` shell
Mitt grafikkort:
01:00.0 VGA compatible controller: NVIDIA Corporation Device 1b80 (rev a1)
```


### Del 4: Komprimera mappen med tar

1. Byt katalog till den ovanför `terminal_uppgift`.
2. Använd `tar` för att komprimera katalogen `terminal_uppgift` till filen
   `abcd1234_terminal.tar.gz`, där du ersätter `abcd1234` med användarnamnet för ditt studentkonto.
    + För att komprimera till gzip och skriva ut alla inkluderade filer och mappar använder du flaggorna `-cvzf`.

Terminalen ska då visa, förutsatt användningen av flaggan `-v` följande:

``` shell
terminal_uppgift/
terminal_uppgift/deluppgift_1/
terminal_uppgift/deluppgift_1/textfil.txt
terminal_uppgift/deluppgift_2/
terminal_uppgift/deluppgift_2/vga_ctrl.txt
```


## Inlämning

Ladda upp tar-filen du skapade i uppgiften till studentportalen.
