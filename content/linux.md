+++
date = "2016-07-27T11:09:39+02:00"
menu = "linux"
module = "linux"
title = "Linux"

lastmod = "2016-08-17T14:05:51+02:00"
+++

Operativsystem är, i korthet, ett system som distribuerar datorkraft till olika program. De mest kända idag är Microsoft [Windows](https://www.microsoft.com/en-us/windows/), [Mac OS X](http://www.apple.com/osx/) och [Linux](https://www.kernel.org/), men det finns många fler.
Linux bygger på *öppen källkod*, vilket innebär att vem som helst kan (lagligt) se och ändra hur det fungerar. Därför är det oerhört flexibelt och används på allt från mobiltelefoner till superdatorer.



## Innehåll

+ [Universitets Linux-datorer](#universitets-linux-datorer)
	- [Ditt Linux-konto](#ditt-linux-konto)
		+ [Inloggning](#inloggning)
		+ [Hemkatalogen](#hemkatalogen)
	- [Filhantering](#filhantering)
	- [Starta program](#starta-program)
	- [Kända problem](#kända-problem)
+ [Linux på egen dator **(ej obligatorisk!)**](#linux-på-egen-dator)
	- [Installation på en virtuell maskin](#installation-på-en-virtuell-maskin)
	- [Live-distribution](#live-distribution)
	- [Bare-metal](#bare-metal)
	- [Populära Linux-distributioner](#populära-linux-distributioner)


## Universitets Linux-datorer

Uppsala universitet tillhandahåller Linux-terminaler med en populär version av Linux som kallas *Ubuntu*.

Kom ihåg att operativsystem och *gränssnitt* inte är samma sak.
Universitets Linuxdatorer är inställda för att se ut och bete sig likt Windows och Mac OS X -- därför kommer du sannolikt kunna använda dem på samma sätt som de datorer du är van vid.

I [Linux-datasalarna](http://www.it.uu.se/datordrift/faq/thinlinc) hittar du *tunna klienter*, som är svaga datorer anslutna till en mycket mer kraftfull server, på vilken programmen körs. Det fungerar på ungefär samma sätt som *Steam Link* eller *Google Docs*.
Eftersom du delar datorkraft med samtliga andra användare kan systemet därför vara långsamt under hög belastning.

{{< figure src="/images/linux/unix-terminal.jpg" class="small" title="Arbetsplats med tunn klient för arbete med Linux i datorsal vid Uppsala universitet" >}}



### Ditt Linux-konto

Om du har aktiverat ditt studentkonto och exempelvis kan logga in på
studentportalen, har du även tillgång till universitetets Linux-datorer
där du får ett eget Linux-konto.

#### Inloggning

Du loggar in med hjälp av ditt studentkonto och *lösenord A*, precis som för Studentportalen.

####  Hemkatalogen.

Varje student har en personlig hem-mapp kopplat till Linux-kontot, där även inställningar för program sparas. 
Kontot är döpt efter ditt användarnamn.
Detta fungerar på samma sätt som på de flesta plattformar.
Med andra ord kommer dina inställningar finnas kvar när du loggar in igen.

*Observera att i dagsläget är varje students lagringskvota ca 250 Megabyte. Med en nedladdningshastighet av 100 Mbit/s skulle det fyllas upp på 20 sekunder. Eftersom detta inkluderar [cache](http://askubuntu.com/questions/102046/is-it-okay-to-delete-cache)-filer och annan tillfällig data från program krävs ständig uppmärksamhet, då program kan sluta fungera utan fritt lagringsutrymme. Moderna webbläsare tenderar att göra detta mycket snabbt.*


### Filhantering

Du kan bläddra i din hemkatalog genom att dubbelklicka på mappen *home* på skrivbordet. Då öppnas en grafisk filhanterare som beter sig likt den i Windows och Mac OS X. Du kan dubbelklicka på filer och mappar för att öppna dem. Tänk dock på att program som är gjorda för Windows och Mac OS X inte alltid fungerar på Linux.

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



## Linux på egen dator

*Denna del är ej obligatorisk!*

UNIX-system, som Linux och Mac OS X, använder den så kallade [POSIX-standarden](https://en.wikipedia.org/wiki/POSIX). Denna används i senare kurser inom IT/KandDV, vilket ger en fördel till studenter som har vana att utveckla på någon av dessa plattformar. Windows-användare bör därmed åtminstone känna till hur man installerar Linux på en dator.

Linux är dessutom *kul* och lätt att komma igång med på en vanlig hemdator.


### Installation på en virtuell maskin

*Virtuella maskiner* simulerar en dator -- vilket låter dig starta ett operativsystem som om det vore vilken dator som helst!

Fördelarna är att det är riskfritt och mycket enkelt att komma igång med, oavsett vilken dator du använder. Du slipper dessutom mycket krångel som kan uppstå med icke-kompatibel hårdvara.

Nackdelen med denna metod är främst att det är resurskrävande. Om din dator har mindre än 4 GB RAM kommer många populära Linux-distributioner, som Ubuntu, vara svåra att köra.

Ett av de mest populära programmen för virtualisering är [VirtualBox](https://www.virtualbox.org/), som är gratis och lätt att använda. Du installerar helt enkelt programmet och följer den inbyggda guiden att skapa en ny virtuell maskin.


### Live-distribution

Denna metod syftar på att installera en distribution på, exempelvis, ett USB-minne och starta om datorn till den. Det fungerar på ungefär samma sätt som när du först installerar Windows på en tom hårddisk, med skillnaden att du har ett komplett, användbart operativsystem.

Många Linux-distributioner installeras via en live-distribution, vilket också låter dig testa gränssnittet.

Fördelen med live-distributioner är att de inte rör resten av datorn utan din tillåtelse. Du kan alltså räkna med att ditt befintliga operativsystem är kvar precis som det är.
Dessutom kan du använda detta för att återställa data när ett operativsystem har kraschat helt.

Nackdelen med detta är att prestandan begränsas av överföringshastigheten för mediet det är installerat på. En SSD är exempelvis många gånger snabbare än ett USB-minne. Dessutom är ofta externa lagringsenheter inte anpassade för det slitage som hårddiskar och SSD:er är gjorda för, vilket kan leda till stora problem efter längre tid (dvs om datorn är påslagen i många månader).


### Bare-metal

Du kan även installera Linux på en systemdisk i datorn. Det går både att ha det som enda operativsystem, eller sida vid sida med exempelvis Windows. Det senare kallas för *dual-boot*.

Många Linux-distributioner gör denna typ av installation mycket enkel, men eftersom det ofta innebär att göra fundamentala skillnader på den disk du redan använder bör du ha en back-up på *allt*. Detta gäller alltså även om du vill använda dual-boot.

Dessutom är det rekommenderat att ha någon form av återställningsmedia för den datorn du vill installera på, inklusive eventuella installationsnycklar. Tänk på att om du bestämmer dig för att skriva över hårddisken och enbart använda Linux, kommer även återställningspartitioner försvinna. Om du inte är förberedd kommer du därmed behöva använda en annan dator för att återställa den du har. Oavsett är det alltid en bra idé att ha ett separat återställningsmedia, om exempelvis hårddisken går sönder.

Fördelen med denna metod är att prestandan blir så bra den kan bli. Nackdelen är dels att du riskerar att göra din dator oanvändbar, samt blir beroende av fungerande drivrutiner. Wi-Fi, skrivare och ljud tenderar att vara det som leder till störst kompatibilitetsproblem.


### Populära Linux-distributioner

Nedan följer en lista av vanliga Linux-distributioner för hemdatorer. Den går, någorlunda, i ordning av svårighetsgrad och är inte på något sätt komplett, men ger förhoppningsvis lite riktlinjer för vad som finns.

+ [Ubuntu](http://www.ubuntu.com/desktop) är troligen det allra mest populära.
    + Erbjuder kompatibilitet med en stor mängd hårdvara.
    + Fungerar out-of-the-box, dvs, du behöver oftast inte göra mycket för att få det att fungera.
    + Eftersom det har så många användare, finns många guider och program tillgängliga.
    - Bygger på en gammal Linux-kärna, vilket innebär att extra arbete krävs för att få igång det på nyare datorer (<2 år gamla).
    - Gränssnittet är ganska resurskrävande och fungerar mindre bra på svagare laptops.
    - Har varit med om vissa skandaler gällande personlig data.
+ [Linux Mint](https://www.linuxmint.com/) har få nackdelar.
    + Är helt öppet och anpassat för användarvänlighet i första hand.
    + Du kan välja gränssnitt, där skrivbordsmiljön Xfce är det mest lättviktiga, men även Cinnamon fungerar bra på äldre datorer.
    + Bygger i grunden på Ubuntu och har därmed samtliga av dess fördelar.
    - Det har dock samma kärna och är lite omständligt på nya datorer.
+ [Elementary OS](https://elementary.io/) bygger på mycket av den designfilosofi som ligger bakom Mac OS X.
    + Gränssnittet är enhetligt, lätt att använda, är *mycket* stiligt och samtidigt resurssnålt.
    + Helt gratis, om du väljer att donera 0 pengar.
    + Bygger på Ubuntu och har samtliga av dess fördelar.
    - Det har dock samma kärna och är lite omständligt på nya datorer.
+ [Debian](https://www.debian.org/distrib/) är grunden bakom Ubuntu
    + Känt för sin stabilitet
    + Fungerar på nästan allt
    - Använder en äldre kärna och är därmed mindre bra för äldre datorer
+ [Fedora](https://getfedora.org) är en annan populär distribution
    + Uppdateras löpande och fungerar bra på även nyare datorer
    - Gränssnittet kan vara något krävande för mycket gamla enheter (exempelvis billigare laptops som är mer än 5 år gamla)
+ [Arch Linux](https://www.archlinux.org/) erbjuder stor valfrihet, men kräver lite mer av användaren
    + Mycket flexibelt utan att vara alltför svår att använda
    + Kräver, i sig, nästan inga resurser alls och går att använda utan grafiskt gränssnitt.
    - Installation görs via ett textbaserat gränssnitt. Guiderna är mycket utförliga, men det kan kännas lite obehagligt för ovana användare.
    - Du kommer behöva läsa på lite mer för att få datorn att fungera som du vill. Därmed kommer du garanterat behöva en extra enhet med webbläsare, exempelvis en smartphone.
+ [Slackware](http://www.slackware.com/) är en av de allra äldsta, levande, distributionerna
    + Har i princip samma fördelar och nackdelar som Arch Linux.
    + Känt för sin stabilitet.
    - Är något svårare att använda än Arch Linux.
+ [Gentoo](https://www.gentoo.org/) är för vana användare som vill lära sig mer om Linux
    + Source-baserad, vilket innebär att du kompilerar allting på datorn själv. Fördelen med detta är att det ökar prestanda.
    + Lätt att använda de senaste versionerna för det mesta.
    + Du kommer lära dig väldigt mycket mer om din dator.
    - Tidskrävande att göra nya saker med.
    - *Svårt* att göra nya saker med.
+ [Funtoo](http://www.funtoo.org/Welcome) är som Gentoo, fast roligare.
    + Har samtliga för- och nackdelar som Gentoo.
    + Vissa designprinciper skiljer sig, vilket i första hand gör det smidigare att använda.
+ [Linux from scratch](http://www.linuxfromscratch.org/) rekommenderas för *mycket* vana användare.
