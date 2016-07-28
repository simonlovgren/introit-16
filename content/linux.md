+++
date = "2016-07-27T11:09:39+02:00"
menu = "linux"
module = "linux"
title = "Linux/Infosidor"

+++

Operativsystem är, i kort, ett system som distribuerar datorkraft till olika program. De mest kända idag är Microsoft Windows, Mac OS X och Linux, men det finns många fler.
Linux bygger på *öppen källkod*, vilket innebär att vem som helst kan (lagligt) se och ändra hur det fungerar. Därför är det oerhört flexibelt och används på allt från mobiltelefoner till superdatorer.



## Innehåll


## Universitets Linux-datorer

Uppsala Universitet tillhandahåller Linux-terminaler med en populär version av Linux som kallas *Ubuntu*.

Kom ihåg att operativsystem och *gränssnitt* är inte samma sak.
Universitets Linuxdatorer är inställda för att se ut och bete sig likt Windows och Mac OS X -- därför kommer du sannolikt kunna använda dem på samma sätt som de datorer du är van vid.

I [Linux-datasalarna](http://www.it.uu.se/datordrift/faq/thinlinc) kan du hitta *tunna klienter*, som är svaga datorer anslutna till en mycket mer kraftfull server, på vilken programmen körs. Det fungerar på ungefär samma sätt som *Steam Link* eller *Google Docs*.
Eftersom du delar datorkraft med samtliga andra användare kan systemet därför vara långsamt under hög belastning.

{{< figure src="/images/linux/unix-terminal.jpg" title="UU:s tunna klienter" >}}



### Ditt konto

Om du har ordnat ett konto på studentportalen har du även tillgång till universitets Linux-datorer.

#### Inloggning

Du loggar in med ditt användarnamn och *lösenord A*, precis som på studentportalen.

####  Hemkatalogen.

Varje student har en personlig hem-mapp kopplat till kontot, där även inställningar för program sparas. 
Den är döpt efter ditt användarnamn.
Detta fungerar på samma sätt som på de flesta plattformar.
Med andra ord kommer dina inställningar finnas kvar när du loggar in igen.

*Observera att i dagsläget är vardera students lagringskvota ca 250 Megabyte. Med en nedladdningshastighet av 100 Mbit/s skulle det fyllas upp på 20 sekunder. Eftersom detta inkluderar cache-filer och annan tillfällig data från program krävs ständig uppmärksamhet, då program kan sluta fungera utan fritt lagringsutrymme. Moderna webbläsare tenderar att göra detta mycket snabbt.*


### Filhantering

Du kan bläddra i din hemkataloggenom att dubbelklicka på mappen *home* på skrivbordet. Då öppnas en grafisk filhanterare som beter sig likt den i Windows och Mac. Du kan dubbelklicka på filer och mappar för att öppna dem. Tänk dock på att program som är gjorda för Windows och Mac inte alltid fungerar på Linux.

{{< figure src="/images/linux/filhanteraren.png" title="Filhanteraren i Ubuntu" >}}

Verktygsfältet näst längst upp till höger låter dig söka, visa som lista och (via kugghjulet) skapa nya filer och mappar. Precis som i de flesta grafiska filhanterare kan du använda musen för att markera flera filer eller flytta dem mellan mappar, genom att klicka, dra och släppa.

Filer som sparas utanför hemkatalogen raderas när du loggar ut.


### Starta program

Genom att klicka på ikonen längst upp till vänster får du upp en meny, som liknar *startmenyn* i Windows. Där listas ett antal program under olika kategorier. Du öppnar  dessa genom att klicka på dem.


### Kända problem

Sedan Linux-systemet blev driftsatt under hösten 2015 finns det en del buggar som ställer till problem för användare. Exempel på dessa är

+ Anslutning av USB-minnen
+ In- och utloggningssvårigheter
+ Felaktig skärmupplösning
+ Problem med att komma ifrån skärmsläckaren

En fullständig lista med åtgärder på dessa problem finns på sidan
http://www.it.uu.se/datordrift/faq/thinlinc%20#TipsAndProblems


## Terminalen

Kommandoprompten, eller *terminalen*, är ett elegant gränssnitt för en mer civiliserad ålder.

Med den kan du utan svårighet konfigurera en server på andra sidan jorden i din smartphone, manipulera tusentals filer på sekunder och rädda en dator de flesta skulle säga har *dött*.

### Vad *är* det?

Kort sagt är terminalen ett textbaserat gränssnitt, dvs är ett sätt att använda datorn utan mus, fönster och ikoner.

Den kräver, i sig, mycket lite för att fungera men kan ändå användas till allt som inte måste visas med bilder.

Terminalen används med hjälp av ett *shell*, där den vanligaste är *bash* (som står för Bourne Again SHell). Denna finns inbyggd i Mac OS X och numera även Windows 10, tack vare att den är så populär bland utvecklare.

### Fördelar med UNIX-terminalen

I korthet är fördelen med terminalen att den helt enkelt **fungerar**. 

Om en dator över huvudtaget startar är sannolikheten stor att den går att styra via någon typ av terminal.
Grafiska gränssnitt kräver däremot mycket mer av datorn för att fungera. De bygger nämligen på komplexa system som interagerar mellan varandra på bekostnad av stabilitet, säkerhet, resurser och portabilitet (dvs körbarhet på olika datorer).

Vidare är det mycket lättare att skriva program som interagerar via terminalen. I de flesta språk (inklusive de som är gjorda för rent vetenskapliga syften) kan du skriva ut ett värde med endast en rad kod, vilket garanterat kommer att fungera på alla datorer programmet fungerar på.

Med grundläggande kunskaper kommer du ha tillgång till många fler verktyg, samt spara massor av tid och huvudvärk när du vill skapa egna. Större vana låter dig dessutom använda datorer mycket mer effektivt.

### Grundläggande användning

Även vana datoranvändare kan känna sig obekväma med textbaserade gränssnitt. Målet i detta steg är att visa hur grunderna är mycket enkla att komma igång med.

Med detta kommer du även kunna öppna och redigera textfiler på universitets datorer hemifrån!

#### Öppna en terminalemulator

På Ubuntu-versionen som används i universitets datorer kan du trycka `<Ctrl>+<Alt>+t` för att öppna en terminalemulator. Den kan även startas som ett vanligt program under *Applications -> Accessories -> Terminal*.

+ På Mac OS X öppnar du den enklast genom att söka efter `terminal` i Spotlight.
+ Microsoft har tillsammans med Canonical (som ligger bakom Ubuntu) introducerat *bash* för Windows 10. En installationsguide finns här: https://msdn.microsoft.com/en-us/commandline/wsl/install_guide


#### Vanliga kommandon

Terminalen öppnas med hem-mappen aktiv. Du använder den genom att skriva ett kommando och trycka `<Enter>`.


Det finns många olika kommandon och program. För filhantering kan du använda dig av dessa:

+ `ls`, *list*, skriver ut filer och mappar i den aktiva mappen
    - Alternativet `-a` skriver ut gömda filer
+ `cd`, *change directory*, följt av mappen du vill byta till, byter mapp
+ `cp`, *copy*, följt av källa och destination, kopierar en fil
+ `mv`, *move*, följt av källa och destination, flyttar en fil
+ `rm`, *remove*, följt av önskad fil, raderar den
    - *Notera att det inte går att återställa filer som raderas!*
+ `mkdir`, *make directory*, följt av ett namn, skapar en ny mapp
+ `nano`, följt av filnamn, öppnar filen (eller skapar en ny om den inte existerar) i en enkel textredigerare

För att använda `cp`, `mv` och `rm` med hela mappar lägger du till alternativet `-r` (*recursive*): t ex `cp -r Desktop Desktopbk`.

{{< figure src="/images/linux/terminal-sample.gif" title="Kopiera och redigera filer i terminalen" >}}

Övriga praktiska kommandon är:

+ `history` skriver ut kommandohistorik
    - För att göra om ett kommando i historiken skriver du `!<nummer>`
+ `top` och `htop` visar aktiva processer
+ `ssh`, *secure shell*, skapar en krypterad anslutning till en annan dator och låter dig använda den
    - För att koppla upp dig till UU:s [Linuxservrar](http://www.it.uu.se/datordrift/maskinpark/linux) skriver du helt enkelt `ssh <användarnamn>@<servernamn>`, varefter den frågar efter *Lösenord A* -- på så sätt kan du arbeta på universitets datorer hemifrån


#### Övriga tips

+ `tab` används för att avsluta ett ord
    {{< figure src="/images/linux/tab.gif" title="Tab-användning" >}}
+ Piltangenterna upp och ner scrollar historik
+ `<Shift>+PgUp` resp. `<Shift>+PgDn` scrollar i terminalfönstret
+ Du kan använda reguljära uttryck, dvs symboler som `*` för att matcha ord i argument
    - Exempelvis flyttar kommandot `mv ./*.jpg ~/Pictures` alla filer som slutar med `.jpg` i den aktiva mappen till mappen Pictures i din hemkatalog
+ Suffixet `| grep <uttryck>` filtrerar fram alla rader som innehåller <uttryck>
    - För att exempelvis visa alla gånger du har skrivit in `rm` kan du skriva `history | grep rm`
+ `<kommando> >> <textfil>` lägger till utskriften av `<kommando>` i slutet av filen `textfil`.


### Filsystemet

I Linux sparas alla filer i en trädstruktur. Den översta sökvägen är `/`, som kallas för *roten*. Om du exempelvis ansluter ett usb-minne till dator, kan den hamna i *mappen* `/mount/usb/` -- sökvägen kan dock variera mellan olika Linux-versioner.

+ Mac OS X, liksom de flesta UNIX-baserade system, bygger på en liknande konvention.
+ Windows har istället, i de flesta fall, en egen rot för varje ansluten disk -- ett usb-minne skulle alltså få en egen bokstav i stilen `E:\`.


#### Absolut sökväg

En *absolut sökväg* inkluderar roten och stämmer så länge mapparna existerar under samma namn. Om du ansluter ett usb-minne med filen `rapport.pdf` skulle dess absoluta sökväg exempelvis bli `/mount/usb/rapport.pdf`.


#### Relativ sökväg

*Relativa sökvägar* beror istället på, exempelvis, ditt konto eller mappen du är i.

+ `./` syftar på den nuvarande mappen. För att exekvera `script.sh` som ligger i mappen du är i, kan du skriva `./script.sh`
+ `../` syftar på mappen över den aktiva. Om du befinner dig i `/mount/usb` är alltså `../` synonymt med `/mount/`
+ `~/` (*tilde*) syftar på din hem-mapp, som kan ersättas av `/home/<användarnamn>`.
    - I Mac OS X motsvaras denna av `/Users/<användarnamn>`


