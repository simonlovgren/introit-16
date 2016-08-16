+++
date = "2016-08-01T13:47:14+02:00"
menu = "terminalen"
module = "terminalen"
title = "Terminalen"

+++

Terminalen är ett elegant, textbaserat, gränssnitt[^civilized] som, till skillnad från ett grafiskt
gränssnitt, styrs via kommandon du skriver in.


Med den kan du utan svårighet konfigurera en server på andra sidan jorden i din smartphone, manipulera tusentals filer på sekunder och rädda en dator de flesta skulle säga har *dött*.


## Innehåll

+ [Vad *är* det?](#vad-är-det)
+ [Fördelar med terminalen](#fördelar-med-terminalen)
+ [Grundläggande användning](#grundläggande-användning)
	- [Öppna en terminalemulator](#öppna-en-terminalemulator)
	- [Användning av terminalen](#användning-av-terminalen)
+ [Vanliga kommandon](#vanliga-kommandon)
	- [Grundläggande filhantering](#grundläggande-filhantering)
		+ [Sökvägar](#sökvägar)
	- [Komprimerade mappar](#komprimerade-mappar)
	- [Historik](#historik)
    - [Hitta filer](#hitta-filer)
	- [Processhantering](#processhantering)
	- [Fjärråtkomst via SSH](#fjärråtkomst-via-ssh)
+ [In- och utdata](#in-och-utdata)
	- [Piping](#piping)
	- [Använda filer](#använda-filer)
+ [Multitasking](#multitasking)
+ [Övriga tips](#övriga-tips)


## Vad *är* det?

Kort sagt är terminalen ett textbaserat gränssnitt, dvs är ett sätt att använda datorn utan mus, fönster och ikoner.

{{< figure src="/images/terminalenexample.gif" title="Spara utdata från program till redigerbar textfil" >}}

Den kräver, i sig, mycket lite för att fungera men kan ändå användas till allt som inte måste visas med bilder.

Terminalen används med hjälp av ett [*skal*](https://en.wikipedia.org/wiki/Unix_shell) (*shell*), där den vanligaste är *bash* (som står för Bourne Again SHell). Denna finns inbyggd i Mac OS X och numera även Windows 10 tack vare att den är så populär bland utvecklare.



## Fördelar med Terminalen

I korthet är fördelen med terminalen att den helt enkelt **fungerar**. 

Om en dator över huvudtaget startar är sannolikheten stor att den går att styra via någon typ av terminal.
Grafiska gränssnitt kräver däremot mycket mer av datorn för att fungera. De bygger nämligen på komplexa system som interagerar mellan varandra på bekostnad av stabilitet, säkerhet, resurser och portabilitet (dvs körbarhet på olika datorer).

Vidare är det mycket lättare att skriva program som interagerar via terminalen. I de flesta språk (inklusive de som är gjorda för rent vetenskapliga syften) kan du skriva ut ett värde med endast en rad kod, vilket garanterat kommer att fungera på alla datorer programmet fungerar på.

Med grundläggande kunskaper om terminalen kommer du ha tillgång till många fler verktyg, samt spara massor av tid och huvudvärk när du vill skapa egna verktyg och program. Större vana låter dig dessutom använda datorer mycket mer effektivt.



## Grundläggande användning

Även vana datoranvändare kan känna sig obekväma med textbaserade gränssnitt. Målet i detta steg är att visa att grunderna är mycket enkla att komma igång med.

Med hjälp av terminalen kan du även enkelt kunna kopiera filer mellan din
lokala dator och andra datorer uppkopplade till ett nätverk. Till exempel
kan du ansluta din dator med Uppsala universitets Linuxsystem. Terminalen gör det även
enkelt att från din lokala dator direkt redigera textfiler på andra datorer
uppkopplade till ett nätverk, till exempel på Uppsala universitets Linuxsystem. 


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
Det finns ett stort antal program där de flesta fungerar enligt syntaxen `<kommando> --<flagga> <argument>`.

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
+ `rm`, *remove*, följt av önskad fil, raderar den
    - *Notera att det inte går att återställa filer som raderas!*
+ `mkdir`, *make directory*, följt av ett namn, skapar en ny mapp
+ `nano`, följt av filnamn, öppnar filen (eller skapar en ny om den inte existerar) i en enkel textredigerare

För att använda `cp`, `mv` och `rm` med hela mappar lägger du till alternativet `-r` (*recursive*): t ex `cp -r Desktop Desktopbk`.

{{< figure src="/images/terminalenterminal-sample.gif" title="Kopiera och redigera filer i terminalen" >}}

#### Sökvägar

I Linux sparas alla filer i en trädstruktur. Den översta sökvägen är `/`, som kallas för *roten*. Om du exempelvis ansluter ett usb-minne till dator, kan den hamna i *mappen* `/mount/usb/` -- sökvägen kan dock variera mellan olika Linux-versioner.

+ Mac OS X, liksom de flesta UNIX-baserade system, bygger på en liknande konvention.
+ Windows har istället, i de flesta fall, en egen rot för varje ansluten disk -- ett usb-minne skulle alltså få en egen bokstav i stilen `E:\ `.

En *absolut sökväg* inkluderar roten och stämmer så länge mapparna existerar under samma namn. Om du ansluter ett usb-minne med filen `rapport.pdf` skulle dess absoluta sökväg exempelvis bli `/mount/usb/rapport.pdf`.

*Relativa sökvägar* beror istället på, exempelvis, ditt konto eller mappen du är i.

+ `./` syftar på den nuvarande mappen. För att exekvera `script.sh` som ligger i mappen du är i, kan du skriva `./script.sh`
+ `../` syftar på mappen över den aktiva. Om du befinner dig i `/mount/usb` är alltså `../` synonymt med `/mount/`
+ `~/` (*tilde*) syftar på din hem-mapp och är synonym med `/home/<användarnamn>`.
    - Skrivbordsmappen för den aktiva användaren är därmed `~/Desktop`
    - I Mac OS X motsvaras denna av `/Users/<användarnamn>`


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

{{< figure src="/images/terminalenfind.gif" title="Kommandot find låter dig hitta filer." >}}

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



## In- och utdata

*Indata* är de värden som skickas in till program medan *utdata* är det som skickas ut. Exempelvis är utdatat från kommandot `ls` de filer som finns i den nuvarande mappen.

### Piping

*Piping* används för att "kedja" in- och utdata mellan program.

Symbolen `|` (*pipe*), som skrivs med `<AltGr>+<` på svenska tangentbord, skrivs mellan kommandon för att utdatan från det föregående används som indata på det senare.

Ett exempel är programmet `grep`, som kan användas för att
plocka bort de rader som saknar följande argument.
Exempelvis kan du skriva `history | grep rm`. Utdatan från `history` skickas då vidare som indata till `grep`, vilket i sin tur skriver ut alla rader med texten `rm`.

Du kan använda pipes i längre kedjor. För att räkna antalet processer som genereras av en webbläsare, exempelvis *Chromium* skriver vi `ps -A | grep chromium | wc -l`

{{< figure src="/images/terminalenpiping.gif" title="Piping kedjar in- och utdata" >}}

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
    {{< figure src="/images/terminalentab.gif" title="Tab-användning" >}}
    + Om du exempelvis vill radera en fil med ett långt namn, som
        `oem-audio-hda-daily-lts-vivid-dkms_0.201606221847-ubuntu14.04.1_all.deb`,
        räcker det att skriva `rm oem` följt av att trycka `<Tab>` för att
        komplettera resten av filnamnet.
    + Kompletteringen är också användbar för att undvika misstag.
+ Wildcards fungerar i de flesta program, inte bara `find`.
    - Exempelvis flyttar kommandot `mv ./*.jpg ~/Pictures` alla filer som slutar med `.jpg` i den aktiva mappen till mappen Pictures i din hemkatalog


[^civilized]: [...för en mer civiliserad tidsålder](https://youtu.be/0aRtupiY9Dw)
