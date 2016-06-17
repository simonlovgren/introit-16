# Skapa & skriva en ny modul
Denna sida beskriver hur du skapar, redigerar och testar en modul. I denna steg-för-steg guide kommer vi skapa modulen "exempel". **Denna modul finns med i källkoden och om du bygger sidan kan du använda dess infosida som referens över hur du kan skriva innehållet i modulen. Den innehåller exempel på alla tillgängliga element och hur dessa används i .md-filerna (markdown).**

**För fullständig referens mellan markdown/hugo-markdown, bygg sidan enligt [Bygga Exempelmodulen](#bygga-exempelmodulen) och navigera till infosidan för modulen EXEMPEL.**

## Innehåll
- [0. Installera dependencies](#0-installera-dependencies)
- [1. Skapa en ny modul](#1-skapa-en-ny-modul)
   + [1.a make section (UNIX/LINUX)](#1a-make-section-unixlinux)
     * [Om du inte kan köra scriptet](#om-du-inte-kan-köra-scriptet)
   + [1.b Manuellt (Terminal/CMD)](#1b-manuellt-terminalcmd)
   + [1.c Kopiera- och Klistra in](#1c-kopiera--och-klistra-in)
- [2. Färgschema & Ikon](#2-färgschema--ikon)
   + [2.a Ikon-bild](#2a-ikon-bild)
   + [2.b Komplementfärger/Färgschema](#2b-komplementfärgerfärgschema)
- [3. Media & filer](#3-media--filer)
- [4. Datafilen](#4-datafilen)
- [5. Infosidan](#5-infosidan)
   + [Metadata-sektion](#metadata-sektion)
   + [Innehålls-sektion](#innehålls-sektion)
- [6. Uppgiftssidan](#6-uppgiftssidan)
- [7. Bygg- och kontrollera sidan](#7-bygg--och-kontrollera-sidan)
   + [Bygga Exempelmodulen](#bygga-exempelmodulen)
- [8. Bygg sidan för produktion/LIVE](#8-bygg-sidan-för-produktionlive)
   + [8.a Sätt korrekt basURL](#8a-sätt-korrekt-basurl)
   + [8.b Bygg hemsidan](#8b-bygg-hemsidan)
   + [8.c Ladda upp filerna till servern](#8c-ladda-upp-filerna-till-servern)

## 0. Installera dependencies
Innan du forstätter med denna guide, installera de dependencies som är listade [här i huvud-README](/#dependencies). Information om hur du installerar vardera dependency finns på deras sida (skall vara länkade från README).

## 1. Skapa en ny modul
Det finns tre sätt att gå tillväga för att skapa en ny modul. Antingen skapar man modulen mha. *make-kommandot* `make section`, *manuellt* via terminal eller *kopiera* filer för en existarande modul och modifiera dessa. Make-kommandot är dock att föredra. Använd helst inte manuella metoder för att skapa filer, då existerande filer kan råka skrivas över.

**Alternativen listas bäst först.**

### 1.a make section (UNIX/LINUX)
Kommandot `make section` startar ett shell-script som guidar dig genom skapandet av en modul/sektion och reducerar (minst) tre individuella kommandon till ett. Det går även starta denna process genom att köra shell-scriptet direkt genom `./createsection.sh`.

**Notera att modulnamnet endast får ha `gemener a-z`, `bindesstreck` och `siffror`. INGA MELLANSLAG!**  
*Namnet som visas utåt på själva hemsidan ställs in på annat ställe, detta namn är för att byggsystemet skall kunna skilja på de olika modulerna.*

![make section][create_section]

Detta script skapar automatiskt de tre filer- och de mappar som krävs för att modulen skall fungera korrekt. Scriptet skriver ut var varje fil skapats **och om filen redan existerar varnar det för detta**. Det påminner även om att skapa en ikon för modulen. Samtliga av dessa filer har en egen sektion i denna guide.

#### Om du inte kan köra scriptet
Om kommandot/scriptet inte kan köras beror det troligtvis på att den ej har exekveringsrätt på ditt system. För att tillåta att det exekverar, ställ dig i rotmappen för projektet och skriv:
```bash
sudo chmod +x createsection.sh
```

### 1.b Manuellt (Terminal/CMD)
För att manuellt skapa de filer som krävs använder du först *hugo*s inbyggda `new`-kommando för att skapa innehållsfilerna (info- och uppgiftssidan i mappen contetn).

**Notera att modulnamnet endast får ha `gemener a-z`, `bindesstreck` och `siffror`. INGA MELLANSLAG!**  
*Namnet som visas utåt på själva hemsidan ställs in på annat ställe, detta namn är för att byggsystemet skall kunna skilja på de olika modulerna.*

För att göra detta skriver du följande i din terminal:

![make section][manual_section]

- Det första kommandot skapar informationssidan.  
  `hugo new <modulnamn>.md`
- Det andra kommandot skapar uppgiftssidan.  
  `hugo new <modulnamn>/uppgifter.md`
- Det tredje raden skapar datafilen som används för modulkortet.  
  `cp themes/introit16/archtypes/default.toml data/modules/<modulnamn>.toml`  
**Detta kommando kan skriva över existerande filer, så var försiktig med filnamn.**

### 1.c Kopiera- och Klistra in
**Notera att modulnamnet endast får ha `gemener a-z`, `bindesstreck` och `siffror`. INGA MELLANSLAG!**  
*Namnet som visas utåt på själva hemsidan ställs in på annat ställe, detta namn är för att byggsystemet skall kunna skilja på de olika modulerna.*

Här kopierades filen `studenttjanster.md` och mappen `studenttjanster`, vilka döptes om till *exempel*. Dessa ligger under `./content/`.
![Kopierade- och döpte om studenttjanster][ui_content]

Här kopierades filen `studenttjanster.toml` och döptes om till *exempel.toml*. Dennaligger under `./data/modules`.
![Kopierade- och döpte om studenttjanster][ui_data]

## 2. Färgschema & Ikon
Grafiska inställningar för modulen består av en ikon-bild och två komplementfärger/färgschema för modulen.

### 2.a Ikon-bild
Ikonen för modulen skall ha **exakt** samma namn som angivits vid skapande av modul-filerna, annars kommer den inte hittas av systemet. Denna skall sedan placeras i mappen `./static/images/icons/`. Försök välja färg- och form som inte redan används av-  eller är snarlik existerande moduler.

**Viktigt är att bilden är:**
- 512 x 512 px
- PNG-format
- Transparent bakgrund

Det finns en [ikon-mall i PSD-format][icon_psd] som kan användas för att skapa en ny ikon, alternativt kan en av de originala ikonerna som finns i mappen `./themes/introit16/images/icons/` vilka är i PNG-format.

### 2.b Komplementfärger/Färgschema
**Om modulen redan finns definierad i style.scss behöver du inte göra några ändringar!**

Komplementfärgerna till modulen består av en huvudfärg (`main_color`), vilken är densamma som ikonens färg, samt en mörkare variant av huvudfärgern (`dark_color`). Dessa läggs till i en lista över modulfärger i temats SCSS-fil. SCSS-filen heter `style.scss` och ligger i mappen `./themes/introit16/static/scss/`. **Använd inte samma färg till båda, det kommer bl.a. orsaka läsbarhetsproblem.** 
Listan över modulfärger ligger nästan högst upp i filen och innehåller redan originalmodulernas färgscheman. För att lägga till färgerna för din modul lägger du helt enkelt till en ny post i denna **kommaseparerade** lista. Posterna består av en s.k. tre-tupel på formen:
```scss
(modulnamn, main_color, dark_color)
```
| Fält           | Exempelvärde   | Beskrivning                                                         |
| -------------- | -------------- | ------------------------------------------------------------------- |
| **modulnamn**  | `"latex"`      | Systemnamn på modulen, **exakt** samma som vid skapande av filerna Måste omslutas av citattecken (`"`). |
| **main_color** | `#ec5f5f`      | Huvudfärg för modulen, angivet i hexadecimal.                       |
| **dark_color** | `#d04040`      | Mörk version av huvudfärgen för modulen, angivet i hexadecimal.     |

Listan är som sagt kommaseparerad och måste avslutas med semikolon:
```scss
// SECTION SETTINGS
// section is list of (name, main_color, dark_color)
$sections:  ("studenttjanster", #ec5f5f, #d04040),
            ("excel", #62a964, #000),
            ("linux", #ea774f, #000),
            ("linux-plus", #faa540, #f9833d),
            ("latex", #ab85bd, #000),
            ("matlab", #5b8cbd, #000),
            ("git", #24b0b2, #2b9192),
            ("ssh", #f18fc6, #000);
````

**Exempel på tillagd post för modulen "exempel" till listan ovan:**

![Tillagt färgschema][add_style]

*Notera att det lagts till ett kommatecken (,) efter raden för "ssh" och semikolon har lagts på slutet av den nya (sista) posten.*

## 3. Media & filer
Media- och övriga filer tillhörande modulen **skall placeras i specifika mappar döpta efter modulen**.

**Bilder** som används i modulen skall läggas under:
```text
./static/images/modulnamn
```

**Övriga filer** skall läggas under:
```text
./static/res/modulnamn
```
Till övrigt hör exempelvis:
- Filer för nedladdning (ex. .tex, .m, .xslx, m.m.)
- Ljudklipp
- Videoklipp
- etc.

Sökvägen till dessa blir, när de läggs in i dokumenten, `images/modulnamn/myfile.ext` samt `res/modulnamn/myfile.ext`.

## 4. Datafilen
Datafilen innehåller information som skall visas på modulkortet på starsidan. Denna fil behövs då modulkorten genereras dynamiskt beroende på vilka moduler som lagts till i systemet. Ändra denna så modulens faktiska namn och en passande underrubrik (som får plats på en rad på kortet).

**Denna fil ligger under** `./data/modules/modulnamn.toml`.

Datafilen innehåller två fält:

| Fält           | Beskrivning                                                         |
| -------------- | ------------------------------------------------------------------- |
| **title**      | Titel på modulen (som visas på modulkortet).                        |
| **tagline**    | "Underrubriken" som visas på modulkortet. **MAX 40 tecken!**        |

För dessa inställningar i `exempel.toml`:
![Redigerad datafil][datafile]

får vi:

![Modulkort Exempel-modul][module_card]


## 5. Infosidan
Filen för infosidan hittar du under `./content/modulnamn.md`.

Alla filer under mappen `content` är s.k. innehållsfiler och dessa har två sektioner: metadata och innehåll.

### Metadata-sektion
Varje innehållsfil har en sektion innehållande metadata allra överst. Denna sektion börjar- och slutar med en rad endast innehållande tre plustecken (`+++`). Några av metadatafälten skapas endast när man använder `make section` eller kommandot `hugo new`.

| Fält           | Beskrivning                                                                        |
| -------------- | ---------------------------------------------------------------------------------- |
| **date**       | Automatiskt ifyllt skapandedatum. Lämna som det är.                                |
| **menu**       | Menytillhörighet. **Skall döpas till exakt samma som när modulen skapades.**       |
| **module**     | Modultillhörighet. **Skall döpas till exakt samma som när modulen skapades.**      |
| **title**      | Titel på sidan. Denna blir sidans titel när den genereras/byggs.                   |

Metadata-sektionen, när filen är skapad, ser ut som följer:
```text
+++
date = "2016-06-16T15:45:10+02:00"
menu = "studenttjänster"
module = "studenttjanster"
title = "exempel"

+++
```
Fälten `menu` och `module` måste döpas om till exakt samma namn som när modulen skapades. `title` är sidans titel när den byggs.  
**För exempelmodulen används:**
```text
+++
date = "2016-06-16T15:45:10+02:00"
menu = "exempel"
module = "exempel"
title = "Exempelmodul"

+++
```

### Innehålls-sektion
Innehållet på sidan läggs in efter den avslutande `+++`-raden för medatadasektionen, då det är denna som indikerar var innehållssektionen startar. Innehållet skrivs huvudsakligen i formatet *markdown*, men med vissa tillägg samt utbytta delar. De utbytta delarna innefattar bl.a. hur man lägger in bilder, vilket istället görs via [hugo shortcodes](https://gohugo.io/extras/shortcodes/).

**Samtlig tillgänglig fungerande markdown- och shortcode syntax för denna hemsida finns beskriven i modulen _exempel_, både i både renderad version och kodsnuttar. Bygg sidan enligt [Bygga Exempelmodulen](#bygga-exempelmodulen) och navigera, via webbläsaren, till infosidan för modulen EXEMPEL.**

Exempel på innehåll skrivet i exempelmodulens infosida:
![Redigerad infosida][content_file]

Renderad version av exempelmodulens sida:
![Infosida][info_page]

## 6. Uppgiftssidan
Filen för infosidan hittar du under `./content/modulnamn/uppgifter.md`.

**Denna fil följer exakt samma redigering som [5. Infosidan](#5-infosidan) med ett undantag:**  
Titeln på sidan skall vara `Modulnamn/Uppgifter`.

Exempel på innehåll skrivet i exempelmodulens uppgiftssida:
![Redigerad uppgiftssida][task_file]

Renderad version av exempelmodulens uppgiftssida:
![Uppgiftssida][task_page]

## 7. Bygg- och kontrollera sidan
För att bygga- och kontrollera sidan finns det, i hugo, en inbyggd server. För att bygga sidan och starta utvecklingsservern, starta ett nytt terminalfönstar och navigera till projektmappen. Det finns två sätt att starta servern, antingen via [make](#make) eller [manuellt](#manuellt). Dessa beskrivs längre ned i sektionen.

Hugo bygger då hemsidan, vilken läggs i mappen *public*, och startar sedan en webbserver på `http://localhost:1313`. Därefter kan hemsidan nås via valfri webbläsare, genom att gå till den adress som hugo skriver ut i terminalen. I bilden nedan var adressen `http://localhost:1313/introit16/public/`.

**Notera att hugo även väntar på förändringar i filerna och automatiskt uppdaterar den byggda hemsidan om någon fil ändras. I och med detta kan du lämna servern igång och direkt se dina ändringar i webbläsaren (Du kan ev. behöva uppdatera sidan manuellt i webbläsaren).**

För att sedan stänga servern, klicka i terminalfönstret och tryck `ctrl + c`.

#### make
Skriv helt enkelt:
```bash
make server
```
![Bygger sidan och startar testserver via make][make_server]

#### manuellt
Bygg först CSS-filen (detta måste göras varje gång du vill se en förändring i CSS:en):
```bash
scss -t compressed themes/introit16/static/scss/style.scss themes/introit16/static/css/style.css
```
följt av:
```bash
hugo server
```
![Bygger sidan och startar testserver][server]

### Bygga Exempelmodulen
Exempelmodulen är flaggad som *draft*, vilket innebär att den inte kommer byggas med de vanliga sidorna. För att exempelmodulen skall synas måste ett argument skickas med när hugo startar servern.

*Detta kan ev. även vara användbart om man börjat skriva en modul, men inte vill att den skall byggas till LIVE-sidan.*

Även här finns ett `make`-kommando och en manuell väg:

#### make
Skriv helt enkelt:
```bash
make draft_server
```

![Server som byggt exempelmodulen (drafts), make][make_exempelmodul]

#### manuellt
Bygg först CSS-filen (detta måste göras varje gång du vill se en förändring i CSS:en):
```bash
scss -t compressed themes/introit16/static/scss/style.scss themes/introit16/static/css/style.css
```
följt av:
```bash
hugo server --buildDrafts
```

![Server som byggt exempelmodulen (drafts), manuellt][bygg_exempelmodul]

## 8. Bygg sidan för produktion/LIVE
När sidan skall byggas och läggas ut LIVE sker detta i tre steg:

### 8.a Sätt korrekt basURL
Börja med att kontrollera/justera basURL:en i sidans konfigurationsfil (`./config.toml`) till LIVE-URL:en. Detta är så enkelt som att öppna konfigurationsfilen och justera fältet `baseurl`. T.ex. skall det för 2016-års kurs sättas till:
```toml
baseurl="http://www.it.uu.se/education/course/homepage/introdat/ht16/"
```
*Se sektionen [config.toml](/#configtoml) i huvud-README för mer information om konfigurationsfilen och dess innehåll.*

### 8.b Bygg hemsidan
Bygg ny hemsidan till sin slutliga HTML-version. Detta går göra med hjälp av `make` eller *manuellt*. Navigera först till projektmappen i terminalen.
#### make
Skriv helt enkelt `make` för att bygga hemsidan.
![Byggande av sidan med make][make]

#### manuellt
Om du inte kan använda `make` går det bygga sidan manuellt, men då måste CSS-filen först byggas manuellt. Detta kan göras genom:
```bash
scss -t compressed themes/introit16/static/scss/style.scss themes/introit16/static/css/style.css
```
följt av ett anrop till `hugo`:
```bash
hugo
```
![Byggande av sidan med hugo][hugo_build]

Den färdiga sidan hamnar i mappen `./public`.

### 8.c Ladda upp filerna till servern
Kopiera sedan samtliga filer i mappen `./public` till den mapp på servern som är roten för LIVE-hemsidan.

<!-- Image references -->
[add_style]: add_style.png
[content_file]: content_file.png
[task_file]: task_file.png
[datafile]: datafile.png
[create_section]: create_section.png
[manual_section]: new_manual.png
[make]: make.png
[hugo_build]: hugo_build.png
[make_server]: make_server.png
[server]: start_server.png
[make_exempelmodul]: make_exempelmodul.png
[bygg_exempelmodul]: bygg_exempelmodul.png
[ui_content]: ui_copy_content.png
[ui_data]: ui_copy_data.png
[module_card]: module_card.png
[info_page]: info_page.png
[task_page]: task_page.png

<!-- file references -->
[icon_psd]: icon-template.psd
