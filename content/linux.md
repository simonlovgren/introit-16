+++
date = "2016-07-27T11:09:39+02:00"
menu = "linux"
module = "linux"
title = "Linux/Infosidor"

+++

Operativsystem är, i kort, ett system som distribuerar datorkraft till olika program. De kan vara gjorda för en specifik enhet med snävt syfte, medan andra kan fungera med i princip vad som helst.
De mest kända idag är Microsoft Windows, Mac OS X och Linux, men det finns många fler.

En viktig skillnad är därmed att *gränssnitt* inte är samma sak som *operativsystem*.
Exempelvis fungerar *bash*, en kommandoprompt med stöd för det mesta som förväntas av ett operativsystems gränssnitt, på Linux, Mac OS X och även Windows 10.

Uppsala Universitet tillhandahåller Linux-terminaler med Ubuntu, som dessutom är lätt att komma igång med på de flesta hemdatorer. Det *grafiska gränssnittet*, dvs där du använder musen för att klicka och dra på saker, är på många sätt likt både Mac OS och Windows.


## Innehåll


## Universitets Linux-datorer

I [Linux-datasalarna](http://www.it.uu.se/datordrift/faq/thinlinc) kan du hitta *tunna klienter*, som är svaga datorer anslutna till en mycket mer kraftfull server, på vilken programmen körs. Det fungerar på ungefär samma sätt som *Steam Link* eller *Google Docs*.

{{< figure src="/images/linux/unix-terminal.jpg" title="UU:s tunna klienter" >}}

Eftersom du delar datorkraft med samtliga andra användare kan systemet vara långsamt under hög belastning.


### Ditt konto

Om du har ordnat ett konto på studentportalen har du även tillgång till universitets Linux-datorer.

#### Inloggning

Du loggar in med ditt användarnamn och *lösenord A*, precis som på studentportalen.

####  Hemkatalogen.

Varje student har en personlig hem-mapp kopplat till kontot, där även inställningar för program sparas. 
Den är döpt efter ditt användarnamn.
Detta fungerar på samma sätt som på de flesta plattformar.

Med andra ord kommer dina inställningar finnas kvar när du loggar in igen. Du kan bläddra i denna mapp genom att dubbelklicka på mappen *home* på skrivbordet. Då öppnas en grafisk filhanterare som beter sig likt den i Windows och Mac.

{{< figure src="/images/linux/filhanteraren.png" title="Filhanteraren i Ubuntu" >}}

Verktygsfältet näst längst upp till höger låter dig söka, visa som lista och (via kugghjulet) skapa nya filer och mappar. Precis som i de flesta grafiska filhanterare kan du använda musen för att markera flera filer eller flytta dem mellan mappar, genom att klicka, dra och släppa.

*Observera att i dagsläget är vardera students lagringskvota ca 250 Megabyte. Med en nedladdningshastighet av 100 Mbit/s kan du alltså fylla den kvotan på 20 sekunder. Eftersom detta inkluderar cache-filer och annan tillfällig data från program krävs ständig uppmärksamhet. Detta då program kan sluta fungera utan fritt lagringsutrymme, samt ta mycket mer plats än väntat.*

### Starta program

Genom att klicka på ikonen längst upp till vänster får du upp en meny, som liknar *startmenyn* i Windows. Där listas ett antal program under olika kategorier. Du öppnar, som väntat, dessa genom att klicka på dem.

### Kända problem

Sedan Linux-systemet blev driftsatt under hösten 2015 finns det en del buggar som ställer till problem för användare. Exempel på dessa är

+ Anslutning av USB-minnen
+ In- och utloggningssvårigheter
+ Felaktig skärmupplösning
+ Problem med att komma ifrån skärmsläckaren

En fullständig lista med åtgärder på dessa problem finns på sidan
http://www.it.uu.se/datordrift/faq/thinlinc%20#TipsAndProblems


## Kommandoprompt

Kommandoprompten, eller *terminalen*, är ett elegant gränssnitt för en mer civiliserad ålder. Med den kan du utan svårighet konfigurera en server på andra sidan jorden i din smartphone, manipulera tusentals filer på sekunder och rädda en dator de flesta skulle säga har *dött*.

### Vad *är* det?

Kort sagt är terminalen ett textbaserat gränssnitt. Linux-system brukar ha ett antal virtuella sådana -- det grafiska gränssnittet exekveras i ett av dem. Väl *i* det grafiska gränssnittet kan du starta en *terminalemulator*, som exempelvis xterm, vilken beter sig precis som de virtuella terminalerna.

Terminalen i sin tur har ett *shell*, där den vanligaste är *bash* (som står för Bourne Again SHell). Denna finns även inbyggd i Mac OS X och numera även Windows 10, tack vare att den är så populär bland utvecklare.

### Fördelar med UNIX-terminalen

Även vana datoranvändare kan tycka att det känns lite obehagligt att använda sig av textbaserade gränssnitt och gör det ogärna om de kan undvika det.

För IT-relaterade arbeten är det dock så pass viktig kunskap att användningen blir svårare ju längre man skjuter upp det. Det är därför bra att, redan från början, lära sig grunderna för att användning ska ske naturligt. Även när man skriver program i grafiska gränssnitt är det mycket smidigare att felsöka och testa prototyper i en terminal.

Inom vetenskapliga områden kommer man ofta komma i kontakt med UNIX-system som kan skilja sig på många sätt, men vana med terminalen kommer göra det enklare att använda och komma igång med dessa. Dessutom finns det servrar gjorda för endast beräkningar.

Eftersom terminalen är oberoende av grafiskt gränssnitt är den mycket lättviktig och lämplig för system beroende av stabilitet och sparsam användning av resurser.
Därför kan, exempelvis, en filserver konfigureras helt utan drivrutiner för annat än nätverksanslutning och skippa all osäkerhet, instabilitet och resursanvändning som medkommer grafiska gränssnitt. En användare kan sedan säkert ansluta till servern med vilken dator som helst (även smartphones) för att använda den via terminalen.

Terminalen är även praktisk att använda lokalt. *bash* har också många inbyggda program och system för att göra allt ett operativsystem förväntas kunna göra, bland annat filhantering, starta program och stänga av datorn. Det som skiljer textbaserade gränssnitt är den smidighet att snabbt manipulera många filer och automatisera repetitiva uppgifter, som att flytta och döpa om filer, via *shell-script* och *cron-jobs*.
Exempelvis kan du, med en rad, göra en sökning efter alla filer som slutar med `.txt`, filtrera de som har ditt namn i titeln och lägga till texten "Author: Me" i början av samtliga.


### Grundläggande användning

Eftersom vanan skiljer sig stort bland olika användare är målet i detta steg att komma över *rädslan* för textbaserade gränssnitt och lära sig hur man använder det för enklare, vardagliga syften.

#### Öppna en terminalemulator

På Ubuntu-versionen som används i universitets datorer kan du trycka `<Ctrl>+<Alt>+t` för att öppna en terminalemulator. Den kan även startas som ett vanligt program under *Applications -> Accessories -> Terminal*.

+ På Mac OS X öppnar du den enklast genom att söka efter `terminal` i Spotlight.
+ Windows 10 har tillsammans med Canonical (som ligger bakom Ubuntu) introducerat *bash* för utvecklare. En installationsguide finns här: https://msdn.microsoft.com/en-us/commandline/wsl/install_guide


#### Vanliga kommandon

Terminalen öppnas med hem-mappen aktiv. Du använder den genom att skriva ett kommando och trycka `<Enter>`.

+ `ls`, *list*, skriver ut filer och mappar i den aktiva mappen
    - Alternativet `-a` skriver ut gömda filer
+ `cd`, *change directory*, följt av mappen du vill byta till, byter mapp
+ `cp`, *copy*, följt av källa och destination, kopierar en fil
+ `mv`, *move*, följt av källa och destination, flyttar en fil
+ `rm`, *remove*, följt av önskad fil, raderar den
    - *Notera att det inte går att återställa filer som raderas!*
+ `history` skriver ut kommandohistorik
    - För att göra om ett kommando i historiken skriver du `!<nummer>`
+ `top` och `htop` visar aktiva processer

För att använda `cp`, `mv` och `rm` med hela mappar lägger du till alternativet `-r` (*recursive*): t ex `cp -r Desktop Desktopbk`.


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


### Övriga tips

+ `tab` används för att avsluta ett ord
    {{< figure src="/images/linux/tab.gif" title="Tab-användning" >}}
+ Piltangenterna upp och ner scrollar historik
+ `<Shift>+PgUp` resp. `<Shift>+PgDn` scrollar i terminalfönstret
+ Du kan använda reguljära uttryck, där `*` är det vanligaste
    - T ex `mv *.jpg ~/Pictures` flyttar alla .jpg-filer i den aktiva mappen till mappen Pictures i din hemkatalog
+ Suffixet `| grep <uttryck>` filtrerar fram alla rader som innehåller <uttryck>
    - För att exempelvis visa alla gånger du har skrivit in `rm` kan du skriva `history | grep rm`
