+++
date = "2016-08-01T13:47:14+02:00"
menu = "terminalen"
module = "terminalen"
title = "Terminalen"

lastmod = "2016-08-18T12:54:33+02:00"
+++

Terminalen är ett elegant, textbaserat, gränssnitt[^civilized] som, till skillnad från ett grafiskt
gränssnitt, styrs via kommandon du skriver in.

Med hjälp av terminalen kan du utan svårighet konfigurera en server på andra sidan jorden från din smartphone, manipulera tusentals filer på sekunder och rädda en dator de flesta skulle säga har *dött*.

Terminalen är, jämfört med grafiska gränssnitt, *enkel*: det kräver mycket
lite hårdvara och resurser för att fungera, samt är relativt okomplicerad att
skapa gränssnitt för.
Terminalen låter dig därför enkelt använda och till och med exekvera egen kod på
allt från chip i storleken av tumnaglar till superdatorer.
När hårddiskar, grafikenheter och hela operativsystem slutar fungera är det
fortfarande möjligt att använda datorn med terminalgränssnitt. Trots att
terminalen kan verka svår att komma igång med ger den dig därmed många
möjligheter som grafiska gränssnitt helt enkelt inte *kan* erbjuda.


## Innehåll


+ [Vad *är* det?](#vad-är-det)
+ [Fördelar med Terminalen](#fördelar-med-terminalen)
+ [Grundläggande användning](#grundläggande-användning)
	+ [Öppna en terminalemulator](#öppna-en-terminalemulator)
	+ [Användning av terminalen](#användning-av-terminalen)
+ [Vanliga kommandon](#vanliga-kommandon)
	+ [Grundläggande filhantering](#grundläggande-filhantering)
		+ [Aktuell katalog](#aktuell-katalog)
		+ [Sökvägar](#sökvägar)
		+ [Navigering i terminalen](#navigering-i-terminalen)
	+ [Komprimerade mappar](#komprimerade-mappar)
	+ [Hitta filer](#hitta-filer)
	+ [Historik](#historik)
	+ [Processhantering](#processhantering)
	+ [Fjärråtkomst via SSH](#fjärråtkomst-via-ssh)
		+ [Kopiera filer med SCP](#kopiera-filer-med-scp)
+ [In- och utdata](#in-och-utdata)
	+ [Piping](#piping)
	+ [Använda filer](#använda-filer)
+ [Multitasking](#multitasking)
+ [Övriga tips](#övriga-tips)

## Vad *är* det?

Kort sagt är terminalen ett textbaserat gränssnitt, dvs är ett sätt att använda datorn utan mus, fönster och ikoner.

{{< figure src="/images/terminalen/example.gif" title="Spara utdata från program till redigerbar textfil" >}}

Terminalen kräver, i sig, mycket lite för att fungera men kan ändå användas till allt som inte måste visas med bilder.

Terminalen används med hjälp av ett [*skal*](https://en.wikipedia.org/wiki/Unix_shell) (*shell*), där det vanligaste är *bash* (som står för Bourne Again SHell). Bash finns inbyggd i nästan alla Linux-distributioner (inklusive Uppsala Universitets Ubuntu-version), Mac OS X och numera även Windows 10 tack vare att den är så populär bland utvecklare.



## Fördelar med Terminalen

I korthet är fördelen med terminalen att den helt enkelt **fungerar**. 

Om en dator över huvudtaget startar är sannolikheten stor att den går att styra via någon typ av terminal.
Grafiska gränssnitt kräver däremot mycket mer av datorn för att fungera. De bygger nämligen på komplexa system som interagerar mellan varandra på bekostnad av stabilitet, säkerhet, resurser och portabilitet (dvs körbarhet på olika datorer).

Vidare är det mycket lättare att skriva program som interagerar via terminalen. I de flesta språk (inklusive de som är gjorda för rent vetenskapliga syften) kan du skriva ut ett värde till terminalen med endast en rad kod, vilket garanterat kommer att fungera på alla datorer programmet fungerar på.

Med grundläggande kunskaper om terminalen kommer du ha tillgång till många fler verktyg, samt spara massor av tid och huvudvärk när du vill skapa egna verktyg och program. Större vana med att arbeta i terminalen låter dig dessutom använda datorer mycket mer effektivt.



## Grundläggande användning

Även vana datoranvändare kan känna sig obekväma med textbaserade gränssnitt. Målet i detta steg är att visa att grunderna är mycket enkla att komma igång med.

Med hjälp av terminalen kan du enkelt

+ Kopiera filer mellan din lokala dator och andra datorer uppkopplade till ett nätverk.
+ Ansluta din dator med Uppsala universitets Linuxsystem.
+ Redigera textfiler på andra datorer uppkopplade till ett nätverk, till exempel på Uppsala universitets Linuxsystem. 


### Öppna en terminalemulator

På Ubuntu-versionen som används i universitets datorer kan du trycka `<Ctrl>+<Alt>+t` för att öppna en terminalemulator. Den kan även startas som ett vanligt program under *Applications -> Accessories -> Terminal*.

+ På Mac OS X öppnar du den enklast genom att söka efter `terminal` i Spotlight.
+ För Windows finns det i dagsläget ingen inbyggd UNIX-terminal:
    - [PuTTY](http://www.putty.org/) låter dig ansluta till en UNIX-server via [SSH](#fjärråtkomst-via-ssh) -- du kan då helt enkelt logga in på en av universitets Linux-servrar med samma uppgifter som studentportalen.
    - [Cygwin](https://www.cygwin.com/) låter dig installera ett stort antal program som ingår i de flesta Linux-installationer.
    - Microsoft har tillsammans med Canonical (som ligger bakom Ubuntu) introducerat *bash* för Windows 10. En installationsguide finns här: https://msdn.microsoft.com/en-us/commandline/wsl/install_guide
    - Du kan även installera ett helt Linux-system med minimal ansträngning på en Windows-dator. Mer om detta står i Linux-modulen.


### Användning av terminalen

Terminalen öppnas med hem-mappen aktiv.

Du använder den helt enkelt genom att skriva ett kommando och trycka `<Enter>`.
De flesta kommandon i terminalen fungerar enligt följande mall (*syntax*) `<kommando> --<flagga> <argument>`.

Programmet `ls` är ett bra, icke-destruktivt exempel:

1. Testa att skriva in `ls` och trycka `<Enter>`. Programmet kommer nu lista alla filer som finns i den öppna katalogen.
2. Prova kommandot `ls --all`. Bindesstreck används för att signalera *flaggor*. `--all` ber programmet att visa alla filer, även dolda.
3. Prova kommandot `ls -a`. Enkla bindesstreck används (ofta) som genvägar för längre ord, så att *ett* tecken står för en flagga. `-a` är synonymt med `--all`.
4. Prova kommandot `ls -lha`. Detta är egentligen *tre olika* flaggor, där de två nya är:
    + `-l`, som står för "long list format"
    + `-h`, som visar filstorlekar i "human-readable" format (dvs i form av Kilobytes och liknande)
5. Prova kommandot `ls Desktop`. `Desktop`, dvs din skrivbordsmapp, är ett *argument*, vilket `ls` tolkar som mappen den ska skriva ut.
6. Prova kommandot `ls --help`. Detta visar en lista på alla tillgängliga alternativ för `ls`.



## Vanliga kommandon

Det finns ett stort antal kommandon inbyggda i de flesta terminaler.


### Grundläggande filhantering

+ `ls`, *list*, skriver ut filer och mappar i den aktiva mappen
+ `pwd`, *print working directory*, visar *sökvägen* till den aktiva mappen
+ `cd`, *change directory*, följt av mappen du vill byta till, byter mapp
+ `cp`, *copy*, följt av källa och destination, kopierar en fil
+ `mv`, *move*, följt av källa och destination, flyttar en fil
    - *Notera att detta skriver över en fil med samma namn*
+ `rm`, *remove*, följt av önskad fil, raderar den
    - *Notera att det inte går att återställa filer som raderas!*
+ `mkdir`, *make directory*, följt av ett namn, skapar en ny mapp
+ `cat`, följt av filnamn, skriver ut filens innehåll till terminalen. Bra att använda vid [piping](#piping).
+ `nano`, följt av filnamn, öppnar filen (eller skapar en ny om den inte existerar) i en enkel textredigerare
+ `less`, följt av filnamn, öppnar en textläsare som bl a låter dig söka och
    hantera stora mängder text.

För att använda `cp`, `mv` och `rm` med hela mappar lägger du till alternativet `-r` (*recursive*): t ex `cp -r Desktop Desktopbk`.

{{< figure src="/images/terminalen/terminal-sample.gif" title="Kopiera och redigera filer i terminalen" >}}

#### Aktuell katalog

Aktuell katalog (*working directory*) syftar på den mapp du "befinner dig" i.
När du öppnar ett nytt terminalfönster är den konventionellt sett hemkatalogen.

Om du *byter mapp* med cd, kommer den aktuella katalogen ändras. Skriver du
exempelvis `cd /env/` blir den aktuella katalogen `/env/`.

Kommandot `pwd` (*print working directory*) skriver ut den aktuella katalogen som en *absolut sökväg*.


#### Sökvägar

I Linux sparas alla filer i en trädstruktur. Den översta sökvägen är `/`, som kallas för *roten*. Om du exempelvis ansluter ett usb-minne till dator, kan den hamna i *mappen* `/mount/usb/` -- sökvägen kan dock variera mellan olika Linux-versioner.

+ Mac OS X, liksom de flesta UNIX-baserade system, bygger på en liknande konvention.
+ Windows har istället, i de flesta fall, en egen rot för varje ansluten disk -- ett usb-minne skulle alltså få en egen bokstav i stilen `E:\ `.

En *absolut sökväg* inkluderar roten och stämmer så länge mapparna existerar under samma namn.
Om du exempelvis har filen `textfil.txt` som ligger i mappen hemkatalogen för
användaren `abcd1234`, är den absoluta sökvägen `/home/abcd1234/textfil.txt`.

{{< figure src="/images/terminalen/file_tree.png" title="Exempel på trädstruktur med absoluta sökvägar" >}}

*Relativa sökvägar* beror istället på, exempelvis, ditt konto eller den
aktuella katalogen (*working directory*).

{{< figure src="/images/terminalen/relative_path_home.png" title="Exempel på relativa sökvägar: två sätt att nå hemmappen" >}}

+ `./` syftar på den aktuella katalogen. För att exekvera `script.sh` i den aktuella katalogen, kan du skriva `./script.sh`. Sökvägarna `./Desktop/` och `Desktop/` är synonyma.
+ `../` syftar på mappen över den aktuella katalogen. Om den aktuella katalogen är `/mount/usb`, är `../` synonymt med `/mount/`.
+ `~/` (*tilde*) syftar på din hem-mapp och är synonym med `/home/<användarnamn>`.
    - Skrivbordsmappen för den aktiva användaren är därmed `~/Desktop`.
    - I Mac OS X motsvaras denna av `/Users/<användarnamn>`.
    - För användaren `abcd1234` är sökvägen `/home/abcd1234/textfil.txt`
        synonym med `~/textfil.txt`.

{{< figure src="/images/terminalen/relative_path.png" title="Exempel på relativa sökvägar: trädstruktur i relation till hemkatalogen" >}}

Sökvägar till mappar kan alltid avslutas med `/`, medan namn på filer aldrig gör
det.
De flesta program accepterar sökvägar till mappar som slutar och inte slutar med `/`,
men det finns undantag. Om ett kommando inte fungerar kan det därför bero på
det.


#### Navigering i terminalen

Du kan testa navigering i terminalen med hjälp av följande exempel:

1. Öppna ett terminalfönster och skriv `cd ~`.
1. Skriv kommandot `pwd`. Terminalen bör visa `/home/<användarnamn>`,
   exempelvis `/home/abcd1234` om du är inloggad med användarnamnet `abcd1234`.
    + Hemkatalogerna i Mac OS X ligger i mappen `/Users/` istället för `/home/`
1. Skriv kommandot `mkdir test_folder`
1. Skriv `ls`. Filerna och mapparna ska inkludera `test_folder`.
1. Skriv `cd test_folder`.
1. Testa kommandot `pwd` och notera hur den ändrats till
   `/home/<användarnamn>/test_folder`.
1. Skriv `nano test_file.txt` för att skapa och redigera en fil. Skriv några
   rader text. Spara filen samt avsluta programmet genom att trycka `<Ctrl>+O`.
1. Skriv `ls`. Nu bör endast `test_file.txt` visas.
1. Skriv `cat test_file.txt`. Terminalen visar innehållet som du just skrivit.
1. Skriv `cd ..` för att återgå till katalogen ovanför. Verifiera gärna med
   `pwd`.
1. Skriv `cat ./test_folder/test_file.txt` för att se innehållet i textfilen
   igen.
1. Skriv `mv test_folder/test_file.txt ./` för att flytta filen
   till din hemkatalog.
1. Skriv `ls`. Utskriften bör visa både `test_folder` och `test_file.txt`.
1. Skriv `cd ~/test_folder`, verifiera gärna med `pwd`.
1. Skriv `ls`. Mappen bör vara tom och därför inte ge någon utskrift.
1. Skriv `cat ../test_file.txt`. Filen bör skrivas ut, eftersom den befinner
   sig i mappen ovanför.
1. Skriv `rm ../test_file.txt` för att radera filen.
1. Återgå till hemmappen.
1. Radera `test_folder` med kommandot `rmdir test_folder`.



### Komprimerade mappar

I Linux används ofta `tar` för komprimering av mappar. Om du stöter på filer av typen `tar.bz2` och `tar.gz` kan du använda det för att extrahera dem.

Vanliga flaggor är:

+ `-x`, *extract*, packar upp ett arkiv.
+ `-c`, *compress*, komprimerar till ett arkiv.
+ `-v`, *verbose*, skriver ut samtliga filer som komprimeras eller extraheras.
+ `-f`, *file*, innebär att arkivet ska läsas eller skrivas från en fil.
+ `-j`, innebär att algoritmen *bzip2* ska användas.
+ `-z`, innebär att algoritmen *gzip* ska användas.
    - Komprimering med *bzip2* erbjuder ofta mindre arkiv, medan *gzip* tenderar att vara mycket snabbare.

Om du exempelvis har arkivet `archive.tar.gz` kan du extrahera den med kommandot `tar -xvzf archive.tar.gz`.


### Hitta filer

Kommandot `find` låter dig söka och hitta filer.
Du använder det genom att skriva `find <mapp> -<sökalternativ> <term>`.

För att hitta filen `dokument.txt` i din hemkatalog skriver du `find ~/ -name dokument.txt`.

{{< figure src="/images/terminalen/find.gif" title="Kommandot find låter dig hitta filer." >}}

För att söka efter mappar lägger du till alternativet `-type d`. Om du exempelvis vill hitta alla mappar med namnet "Foo" i mappen `~/Documents` skriver du `find ~/Documents -type d -name Foo`.

Du kan också använda
[*wildcards*](https://en.wikibooks.org/wiki/A_Quick_Introduction_to_Unix/Wildcards),
som exempelvis tecknet `*` vilken matchar minst 0 tecken.
Vill du exempelvis söka efter filer som slutar med `.pdf` i mappen
`~/Downloads` skriver du
`find ~/Downloads -name *.pdf`


### Historik

När du experimenterar med terminalen kommer det bli jobbigt att skriva samma kommandon flera gånger.

+ `history` skriver ut kommandohistorik.
    - För att göra om ett kommando i historiken skriver du `!<nummer>`.
+ Piltangenter uppåt och neråt kommer "scrolla" de senaste kommandona du har gjort
+ `<Shift>+PgUp` resp. `<Shift>+PgDn` scrollar i terminalfönstret


### Processhantering

I Linux startar program i *processer*, där de i sin tur kan starta flera. Vardera har ett eget id-nummer, kallat *PID*.
När program kraschar eller tar för mycket resurser är det bra att hålla koll på hur man hanterar dem.

+ `top` och `htop` visar aktiva processer i realtid.
+ `ps`, med alternativ, visar en lista av processer.
+ `kill` följt av PID, dödar den processen.
    - Detta motsvarar *Force Quit* i Mac OS X och att avsluta med aktivitetshanteraren i Windows
    - Observera att du kan råka stänga av viktiga processer med detta kommando, vilket kan leda till förlorad data och/eller omstart av datorn
+ `<Ctrl>+C` skickar en kill-signal till ett aktivt program
    - Detta är praktiskt om ett aktivt program har kraschat!


### Fjärråtkomst via SSH

En av de mest kraftfulla verkygen i terminalen är `ssh`.

`ssh`, *secure shell*, skapar en krypterad anslutning till en annan dator och låter dig använda den var du än är.

För att koppla upp dig till UU:s [Linuxservrar](http://www.it.uu.se/datordrift/maskinpark/linux) skriver du helt enkelt `ssh <användarnamn>@<servernamn>`, varefter den frågar efter *Lösenord A* -- på så sätt kan du arbeta på universitets datorer hemifrån.

Exempelvis kan du använda servern *Arrhenius* genom att skriva
`ssh abcd1234@arrhenius.it.uu.se`, där du ersätter `abcd1234` med ditt
studentkontos användarnamn.

#### Kopiera filer med SCP

Du kan även kopiera filer via `ssh` med hjälp av `scp` (*secure copy*).

Den fungerar på ungefär samma sätt som `cp`, men du kan även kopiera till och
från fjärranslutna enheter. Argumentet skrivs i det fallet
`<användarnamn>@<servernamn>:<sökväg>`.

Användning påminner på många sätt om `ssh`. Om du har filen `test_file.txt`
i din hemkatalog på Uppsala Universitets linux-server och vill kopiera den till
Documents i din hemkatalog på datorn du sitter vid, kan du skriva följande:

``` shell
scp abcd1234@arrhenius.it.uu.se:~/test_file.txt ~/Documents/
```

Där `abcd1234` ska ersättas med namnet för ditt studentkonto.
Notera att den frågar efter lösenord på samma sätt som `ssh`.

Du kan även kopiera filen `test_file.txt` till mappen `Documents`
i hemkatalogen på Uppsala universitets linux-server genom att ändra
destinationens argument.

``` shell
scp test_file.txt abcd1234@arrhenius.it.uu.se:~/Documents/
```

Notera att `test_file.txt` här antas vara i den aktuella katalogen.



## In- och utdata

*Indata* är de värden som skickas in till program medan *utdata* är det som skickas ut. Exempelvis är utdatat från kommandot `ls` namnen på de filer och mappar som finns i den nuvarande mappen.

### Piping

*Piping* används för att koppla samman utdata från ett kommando till indata för
ett annat kommando i en kedja (kallad *pipeline*).

Symbolen `|` (*pipe*), som skrivs med `<AltGr>+<` på svenska tangentbord, skrivs mellan kommandon för att utdatan från det föregående ska användas som indata till det senare.

Ett exempel på en enkel pipeline är hur programmet `grep`, som kan användas för att
filtrera textrader,
kan kopplas ihop med kommandot `history` genom att skriva `history | grep rm`
Utdatan från `history` skickas då vidare som indata till `grep`, vilken i sin tur filtrerar *bort* alla rader *utan* texten `rm`.

Du kan använda pipes i längre kedjor. För att räkna antalet processer som genereras av en webbläsare, exempelvis *Chromium* skriver vi `ps -A | grep chromium | wc -l`

{{< figure src="/images/terminalen/piping.gif" title="Piping kedjar in- och utdata" >}}

+ `ps -A` listar alla aktiva processer
+ `grep chromium` filtrerar fram alla rader med ordet "chromium"
+ Programmet `wc`, som används för att räkna exempelvis ord och tecken, med flaggan `-l`, räknar antalet utskrivna rader.


### Använda filer

Du kan även använda filer för in- och utdata med hjälp av symbolerna `<, >, >>`.

+ `<kommando> > <filnamn>` skriver utdata från kommando till filnamn.
    - Befintlig data i filen raderas -- var försiktig!
    - Detta är mycket smidigt med program som `lspci`, vilka skriver ut stora mängder data. Testa exempelvis kommandot `lspci > hardware.txt`.
+ `<kommando> >> <filnamn>` skriver utdata från kommando till filnamn.
    - Utskriften läggs till i slutet av filen
+ `<kommando> < <filnamn>` använder filen som indata till kommandot.
    - Kan med fördel användas för att testa program som styrs via terminalen



## Multitasking

I terminalen kan du ha flera program igång, enligt vad som kallas för *jobs*.

+ Starta ett program i bakgrunden med suffixet `&`.
    - Du kan testa detta genom att skriva `nano &`.
+ Skicka ett program till bakgrunden och återgå till terminalen med kortkommandot `<Ctrl>-Z`
    - Du kan prova detta genom att öppna editorn `vi` och trycka `<Ctrl>-Z`.
+ Visa aktiva program med kommandot `jobs`.
    - Notera siffrorna längst till vänster!
+ Återgå till ett program med `fg`
    - `fg %<siffra>` kommer öppna jobbet med motsvarande siffra i `jobs`.
    - `fg` öppnar programmet som ligger "överst", dvs det som senast blev lagt i bakgrunden.



## Övriga tips

+ `<Tab>`-tangenten används för att avsluta ett ord
    {{< figure src="/images/terminalen/tab.gif" title="Tab-användning" >}}
    + Om du exempelvis vill radera en fil med ett långt namn, som
        `oem-audio-hda-daily-lts-vivid-dkms_0.201606221847-ubuntu14.04.1_all.deb`,
        räcker det att skriva `rm oem` följt av att trycka `<Tab>` för att
        komplettera resten av filnamnet.
    + Kompletteringen är också användbar för att undvika misstag.
    + Om det finns flera matchningar, exempelvis för `cd Do<Tab>` om du både
        har `Documents` och `Downloads` i samma katalog, kan du trycka på
        `<Tab>` upprepade gånger för att växla mellan dem.
        + Vissa skal kräver att du trycker två gånger för att få den första
            matchningen av flera. Då händer alltså ingenting om du trycker
            `<Tab>` en gång.
+ Wildcards fungerar i de flesta program, inte bara `find`.
    - Exempelvis flyttar kommandot `mv ./*.jpg ~/Pictures` alla filer som slutar med `.jpg` i den aktiva mappen till mappen Pictures i din hemkatalog


[^civilized]: [...för en mer civiliserad tidsålder](https://youtu.be/0aRtupiY9Dw)
