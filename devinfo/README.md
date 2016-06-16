# Skapa & skriva en ny modul
Denna sida beskriver hur du skapar, redigerar och testar en modul. I denna steg-för-steg guide kommer vi skapa modulen "exempel". **Denna modul finns med i källkoden och om du bygger sidan kan du använda dess infosida som referens över hur du kan skriva innehållet i modulen. Den innehåller exempel på alla tillgängliga element och hur dessa används i .md-filerna (markdown).**

**För fullständig referens mellan markdown/hugo-markdown, bygg sidan enligt [6. Bygg- och kontrollera sidan](#6-bygg--och-kontrollera-sidan) och navigera till infosidan för modulen EXEMPEL.**

## 0. Installera dependencies
Innan du forstätter med denna guide, installera de dependencies som är listade [här i huvud-README](/#dependencies). Information om hur du installerar vardera dependency finns på deras sida (skall vara länkade från README).

## 1. Skapa en ny modul
Det finns tre sätt att gå tillväga för att skapa en ny modul. Antingen skapar man modulen mha. *make-kommandot* `make section`, *manuellt* via terminal eller *kopiera* filer för en existarande modul och modifiera dessa. Make-kommandot är dock att föredra. Använd helst inte manuella metoder för att skapa filer, då existerande filer kan råka skrivas över.

**Alternativen listas bäst först.**

### 1.a make section (*UNIX/LINUX*)
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

Här kopierades filen `studenttjanster.md` och mappen `studenttjanster`, vilka döptes om till *exempel*. Dessa ligger under `projektmapp/content/`.
![Kopierade- och döpte om studenttjanster][ui_content]

Här kopierades filen `studenttjanster.toml` och döptes om till *exempel.toml*. Dennaligger under `projektmapp/data/modules`.
![Kopierade- och döpte om studenttjanster][ui_data]

## 2. Färgschema & Ikon
Grafiska inställningar för modulen består av en ikon-bild och två komplementfärger/färgschema för modulen.

## 2.a Ikon-bild
Ikonen för modulen skall ha **exakt** samma namn som angivits vid skapande av modul-filerna, annars kommer den inte hittas av systemet. Denna skall sedan placeras i mappen `projektmapp/static/images/icons/`. Försök välja färg- och form som inte redan används av-  eller är snarlik existerande moduler.

**Viktigt är att bilden är:**
- 512 x 512 px
- PNG-format
- Transparent bakgrund

Det finns en [ikon-mall i PSD-format][icon_psd] som kan användas för att skapa en ny ikon, alternativt kan en av de originala ikonerna som finns i mappen `projektmapp/themes/introit16/images/icons/` vilka är i PNG-format.

## 2.b Komplementfärger/Färgschema
**Om modulen redan finns definierad i style.scss behöver du inte göra några ändringar!**

Komplementfärgerna till modulen består av en huvudfärg (`main_color`), vilken är densamma som ikonens färg, samt en mörkare variant av huvudfärgern (`dark_color`). Dessa läggs till i en lista över modulfärger i temats SCSS-fil. SCSS-filen heter `style.scss` och ligger i mappen `projektmapp/themes/introit16/static/scss/`. **Använd inte samma färg till båda, det kommer bl.a. orsaka läsbarhetsproblem.** 
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

## 3. Datafilen
Datafilen innehåller information som skall visas på modulkortet på starsidan. Denna fil behövs då modulkorten genereras dynamiskt beroende på vilka moduler som lagts till i systemet.

**Denna fil ligger under** `projektmapp/data/modules/modulnamn.toml`.

Datafilen innehåller två fält:
| Fält           | Beskrivning                                                         |
| -------------- | ------------------------------------------------------------------- |
| **title**      | Titel på modulen (som visas på modulkortet).                        |
| **tagline**    | "Underrubriken" som visas på modulkortet.                           |

För dessa inställningar i `exempel.toml`:
![Redigerad datafil][datafile]

får vi:

![Modulkort Exempel-modul][module_card]


## 4. Infosidan
![Redigerad infosida][content_file]
![Infosida][content_page]

## 5. Uppgiftssidan
![Redigerad uppgiftssida][task_file]

![Uppgiftssida][task_page]

## 6. Bygg- och kontrollera sidan
![Bygger sidan och startar testserver][server]

## 7. Bygg sidan för produktion/LIVE
Börja med att justera basURL:en i sidans konfigurationsfil (config.toml) till LIVE-URL:en. Se sektionen [config.toml](/#configtoml) i huvud-README för mer information om detta. 

![Byggande av sidan][make]

<!-- Image references -->
[add_style]: add_style.png
[content_file]: content_file.png
[task_file]: task_file.png
[datafile]: datafile.png
[create_section]: create_section.png
[manual_section]: new_manual.png
[make]: make.png
[server]: start_server.png
[ui_content]: ui_copy_content.png
[ui_data]: ui_copy_data.png
[module_card]: module_card.png
[info_page]: info_page.png
[task_page]: task_page.png

<!-- file references -->
[icon_psd]: icon-template.psd
