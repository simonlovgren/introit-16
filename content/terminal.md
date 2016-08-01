+++
date = "2016-08-01T13:47:14+02:00"
menu = "studenttjänster"
module = "studenttjanster"
title = "terminal"

+++

Kommandoprompten, eller *terminalen*, är ett elegant gränssnitt för en mer civiliserad ålder.

Med den kan du utan svårighet konfigurera en server på andra sidan jorden i din smartphone, manipulera tusentals filer på sekunder och rädda en dator de flesta skulle säga har *dött*.


## Innehåll

- [Vad *är* det?](#vad-är-det)
- [Fördelar med UNIX-terminalen](#fördelar-med-unix-terminalen)
- [Grundläggande användning](#grundläggande-användning)
    + [Öppna en terminalemulator](#öppna-en-terminalemulator)
    + [Vanliga kommandon](#vanliga-kommandon)
    + [Övriga tips](#övriga-tips)
- [Filsystemet](#filsystemet)
    + [Absolut sökväg](#absolut-sökväg)
    + [Relativ sökväg](#relativ-sökväg)


## Vad *är* det?


Kort sagt är terminalen ett textbaserat gränssnitt, dvs är ett sätt att använda datorn utan mus, fönster och ikoner.

{{< figure src="/images/terminal/example.gif" title="Spara utdata från program till redigerbar textfil" >}}

Den kräver, i sig, mycket lite för att fungera men kan ändå användas till allt som inte måste visas med bilder.

Terminalen används med hjälp av ett *shell*, där den vanligaste är *bash* (som står för Bourne Again SHell). Denna finns inbyggd i Mac OS X och numera även Windows 10, tack vare att den är så populär bland utvecklare.

## Fördelar med UNIX-terminalen

I korthet är fördelen med terminalen att den helt enkelt **fungerar**. 

Om en dator över huvudtaget startar är sannolikheten stor att den går att styra via någon typ av terminal.
Grafiska gränssnitt kräver däremot mycket mer av datorn för att fungera. De bygger nämligen på komplexa system som interagerar mellan varandra på bekostnad av stabilitet, säkerhet, resurser och portabilitet (dvs körbarhet på olika datorer).

Vidare är det mycket lättare att skriva program som interagerar via terminalen. I de flesta språk (inklusive de som är gjorda för rent vetenskapliga syften) kan du skriva ut ett värde med endast en rad kod, vilket garanterat kommer att fungera på alla datorer programmet fungerar på.

Med grundläggande kunskaper kommer du ha tillgång till många fler verktyg, samt spara massor av tid och huvudvärk när du vill skapa egna. Större vana låter dig dessutom använda datorer mycket mer effektivt.

## Grundläggande användning

Även vana datoranvändare kan känna sig obekväma med textbaserade gränssnitt. Målet i detta steg är att visa hur grunderna är mycket enkla att komma igång med.

Med detta kommer du även kunna öppna och redigera textfiler på universitets datorer hemifrån!

### Öppna en terminalemulator

På Ubuntu-versionen som används i universitets datorer kan du trycka `<Ctrl>+<Alt>+t` för att öppna en terminalemulator. Den kan även startas som ett vanligt program under *Applications -> Accessories -> Terminal*.

+ På Mac OS X öppnar du den enklast genom att söka efter `terminal` i Spotlight.
+ Microsoft har tillsammans med Canonical (som ligger bakom Ubuntu) introducerat *bash* för Windows 10. En installationsguide finns här: https://msdn.microsoft.com/en-us/commandline/wsl/install_guide


### Användning av terminalen

Terminalen öppnas med hem-mappen aktiv.

Du använder den helt enkelt genom att skriva ett kommando och trycka `<Enter>`.
Det finns ett stort antal kommandon som fungerar på många olika sätt.

Kommandot `ls` är ett bra, icke-destruktivt exempel:

1. Testa att skriva in `ls` och trycka <Enter>. Programmet kommer nu lista alla filer som finns i den öppna katalogen.
2. Prova kommandot `ls --all`. Bindesstreck används för att signalera *flaggor*. `--all` ber programmet att visa alla filer, även dolda.
3. Prova kommandot `ls -a`. Enkla bindesstreck används (ofta) som genvägar för längre ord, så att *ett* tecken står för en flagg. `-a` är synonymt med `--all`.
4. Prova kommandot `ls -lha`. Detta är egentligen *tre olika* alternativ, där de två nya är:
    + `-l`, dvs "long list format"
    + `-h`, som visar filstorlekar i "human-readable"
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

{{< figure src="/images/terminal/terminal-sample.gif" title="Kopiera och redigera filer i terminalen" >}}

#### Sökvägar

I Linux sparas alla filer i en trädstruktur. Den översta sökvägen är `/`, som kallas för *roten*. Om du exempelvis ansluter ett usb-minne till dator, kan den hamna i *mappen* `/mount/usb/` -- sökvägen kan dock variera mellan olika Linux-versioner.

+ Mac OS X, liksom de flesta UNIX-baserade system, bygger på en liknande konvention.
+ Windows har istället, i de flesta fall, en egen rot för varje ansluten disk -- ett usb-minne skulle alltså få en egen bokstav i stilen `E:\`.

En *absolut sökväg* inkluderar roten och stämmer så länge mapparna existerar under samma namn. Om du ansluter ett usb-minne med filen `rapport.pdf` skulle dess absoluta sökväg exempelvis bli `/mount/usb/rapport.pdf`.

*Relativa sökvägar* beror istället på, exempelvis, ditt konto eller mappen du är i.

+ `./` syftar på den nuvarande mappen. För att exekvera `script.sh` som ligger i mappen du är i, kan du skriva `./script.sh`
+ `../` syftar på mappen över den aktiva. Om du befinner dig i `/mount/usb` är alltså `../` synonymt med `/mount/`
+ `~/` (*tilde*) syftar på din hem-mapp, som kan ersättas av `/home/<användarnamn>`.
    - I Mac OS X motsvaras denna av `/Users/<användarnamn>`


### Historik

För att upprepa tidigare kommandon finns två metoder:

+ `history` skriver ut kommandohistorik.
    - För att göra om ett kommando i historiken skriver du `!<nummer>`.
+ Piltangenter uppåt och neråt kommer "scrolla" de senaste kommandona du har gjort
+ `<Shift>+PgUp` resp. `<Shift>+PgDn` scrollar i terminalfönstret


### Processhantering

I Linux startar program i *processer*, där de i sin tur kan starta flera. Vardera har ett eget id-nummer, kallat *PID*.

+ `top` och `htop` visar aktiva processer i realtid.
+ `ps`, med alternativ, visar en lista av processer.
+ `kill` följt av PID, dödar den processen.
    - Detta motsvarar `Force Quit` i Mac OS X och att avsluta med aktivitetshanteraren i Windows
    - Observera att du kan råka stänga av viktiga processer med detta kommando, vilket kan leda till förlorad data och/eller omstart av datorn
+ `<Ctrl>+C` skickar en kill-signal till ett aktivt program
    - Detta är praktiskt om ett aktivt program har kraschat!


### Fjärråtkomst

En av de mest kraftfulla verkygen i terminalen är `ssh`.

`ssh`, *secure shell*, skapar en krypterad anslutning till en annan dator och låter dig använda den

För att koppla upp dig till UU:s [Linuxservrar](http://www.it.uu.se/datordrift/maskinpark/linux) skriver du helt enkelt `ssh <användarnamn>@<servernamn>`, varefter den frågar efter *Lösenord A* -- på så sätt kan du arbeta på universitets datorer hemifrån.


## Piping

*Piping* används för att "kedja" in- och utdata i program. 


## Övriga tips

+ `tab` används för att avsluta ett ord
    {{< figure src="/images/terminal/tab.gif" title="Tab-användning" >}}
+ Piltangenterna upp och ner scrollar historik
+ Du kan använda reguljära uttryck, dvs symboler som `*` för att matcha ord i argument
    - Exempelvis flyttar kommandot `mv ./*.jpg ~/Pictures` alla filer som slutar med `.jpg` i den aktiva mappen till mappen Pictures i din hemkatalog
+ Suffixet `| grep <uttryck>` filtrerar fram alla rader som innehåller <uttryck>
    - För att exempelvis visa alla gånger du har skrivit in `rm` kan du skriva `history | grep rm`
+ `<kommando> >> <textfil>` lägger till utskriften av `<kommando>` i slutet av filen `textfil`.



