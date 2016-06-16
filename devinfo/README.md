# Skapa & skriva en ny modul
Denna sida beskriver hur du skapar, redigerar och testar en modul. I denna steg-för-steg guide kommer vi skapa modulen "exempel". **Denna modul finns med i källkoden och om du bygger sidan kan du använda dess infosida som referens över hur du kan skriva innehållet i modulen. Den innehåller exempel på alla tillgängliga element och hur dessa används i .md-filerna (markdown).**

**För fullständig referens mellan markdown/hugo-markdown, bygg sidan enligt [6. Bygg- och kontrollera sidan](#6-bygg--och-kontrollera-sidan) och navigera till modulen EXEMPEL.**

## 1. Skapa en ny modul
Det finns två sätt att gå tillväga för att skapa en ny modul. Antingen skapar man modulen mha. *make-kommandot* ´make section´ eller *manuellt*. Make-kommandot är att föredra.

**Gemensamt för båda tillvägagångssätten är att du måste använda terminalen/kommandotolken.**

### make section
Kommandot `make section` startar ett shell-script som guidar dig genom skapandet av en modul/sektion och reducerar (minst) tre individuella kommandon till ett. Det går även starta denna process genom att köra shell-scriptet direkt genom `./createsection.sh`.

![make section][create_section]

### Manuellt
För att manuellt skapa de filer som krävs använder du först *hugo*s inbyggda `new`-kommando för att skapa innehållsfilerna (info- och uppgiftssidan i mappen contetn). För att göra detta skriver du följande i din terminal:



## 2. Färgschema
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

<!-- Image references -->
[add_style]: add_style.png
[content_file]: content_file.png
[task_file]: task_file.png
[datafile]: datafile.png
[create_section]: create_section.png
[make]: make.png
[server]: start_server.png
