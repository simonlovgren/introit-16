# Skapa & skriva en ny modul
Denna sida beskriver hur du skapar, redigerar och testar en modul. I denna steg-för-steg guide kommer vi skapa modulen "exempel". **Denna modul finns med i källkoden och om du bygger sidan kan du använda dess infosida som referens över hur du kan skriva innehållet i modulen. Den innehåller exempel på alla tillgängliga element och hur dessa används i .md-filerna (markdown).**

**För fullständig referens mellan markdown/hugo-markdown, bygg sidan enligt [6. Bygg- och kontrollera sidan](#6-bygg--och-kontrollera-sidan) och navigera till infosidan för modulen EXEMPEL.**

## 0. Installera dependencies
Innan du forstätter med denna guide, installera de dependencies som är listade [här i huvud-README](/#dependencies). Information om hur du installerar vardera dependency finns på deras sida (skall vara länkade från README).

## 1. Skapa en ny modul
Det finns tre sätt att gå tillväga för att skapa en ny modul. Antingen skapar man modulen mha. *make-kommandot* ´make section´, *manuellt* via terminal eller *kopiera* filer för en existarande modul och modifiera dessa. Make-kommandot är dock att föredra. Använd helst inte manuella metoder för att skapa filer, då existerande filer kan råka skrivas över.

**Alternativen listas bäst först.**

### 1.a make section (*UNIX/LINUX*)
Kommandot `make section` startar ett shell-script som guidar dig genom skapandet av en modul/sektion och reducerar (minst) tre individuella kommandon till ett. Det går även starta denna process genom att köra shell-scriptet direkt genom `./createsection.sh`.

**Notera att modulnamnet endast får ha `gemener a-z`, `bindesstreck` och `siffror`. INGA MELLANSLAG!**  
*Namnet som visas utåt på själva hemsidan ställs in på annat ställe, detta namn är för att byggsystemet skall kunna skilja på de olika modulerna.*

![make section][create_section]

Detta script skapar automatiskt de tre filer- och de mappar som krävs för att modulen skall fungera korrekt. Samtliga av dessa filer har en egen sektion i denna guide, i vilken platsen för vardera kommer nämnas.

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
- Det andra kommandot skapar uppgiftssidan.
- Det tredje raden skapar datafilen som används för modulkortet.

### 1.c Kopiera- och Klistra in
**Notera att modulnamnet endast får ha `gemener a-z`, `bindesstreck` och `siffror`. INGA MELLANSLAG!**  
*Namnet som visas utåt på själva hemsidan ställs in på annat ställe, detta namn är för att byggsystemet skall kunna skilja på de olika modulerna.*

Här kopierades filen `studenttjanster.md` och mappen `studenttjanster`, vilka döptes om till *exempel*. Dessa ligger under *projektmapp/content/*.
![Kopierade- och döpte om studenttjanster][ui_content]

Här kopierades filen `studenttjanster.toml` och döptes om till *exempel.toml*. Dennaligger under *projektmapp/data/modules*.
![Kopierade- och döpte om studenttjanster][ui_data]

## 2. Färgschema & Ikon
**Om modulen redan finns definierad i style.scss behöver du inte göra några ändringar!**
![Tillagt färgschema][add_style]

## 3. Datafilen
![Redigerad datafil][datafile]

## 4. Infosidan
![Redigerad infosida][content_file]

## 5. Uppgiftssidan
![Redigerad uppgiftssida][task_file]

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
