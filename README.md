# Introduktion till datorer 2016
Detta repo innehåller källkod för info/uppgiftssidan för Uppsala universitets *Introduktion till datorer 2016*.  
Hemsidan är byggd med den statiska webbside-generatorn [Hugo](https://gohugo.io/).

## Dependencies
- [Ruby](https://www.ruby-lang.org) (*För att kunna installera SCSS/SASS*)
- [SCSS/SASS](http://sass-lang.com/) via terminal (*Specifikt SASS's SCSS-syntax för att generera sidans CSS*)
- [Hugo](https://gohugo.io/) (*Själva sidgeneratorn*)

### Bra att ha, men inte nödvändigt
- **Unix**-system (*Det medföljer bash-script för att enkelt skapa nya sektioner bl.a.*)
- GNU **Make** (*För att lätt bygga systemet via ett kommando*)

## Skapa en ny modul (sektion)
För hur man skapar en ny modul (sektion), **[SE HÄR](devinfo)**.

## Makeregler
Det finns ett fåtal makeregler, men främst används de tre förstnämnda.
```bash
make
```
Bygger CSS och HTML till mappen `public`.

```bash
make clean
```
Rensar den byggda webbsidan.

```bash
make section
```
Initierar shell-scriptet `createsection.sh`, vilken guidar dig genom skapandet av en ny modul/sektion. Både markdowns för infosida och uppgiftssida samt datafil för modulen kommer skapas. Existerande filer **bör** inte skrivas över, men var försiktig.

Namn på sektion måste vara lowercase alphanumeric och samtliga ord skall bindas med dash (-). T.ex. `linux-plus`.

```bash
make server
```
Startar en hugo-server (**obs! utan att rendera/bygga drafts**). Se [DevInfo/Bygg och kontrollera sidan](devinfo#7-bygg--och-kontrollera-sidan) för mer info.

```bash
make draft_server
```
Startar en hugo-server som även bygger/renderar drafts. Se [DevInfo/Bygg och kontrollera sidan](devinfo#7-bygg--och-kontrollera-sidan) för mer info.

```bash
make css
```
Bygger CSS-filen från SASS och lägger denna under `/themes/introit/css/style.css`.  
**Måste köras innan `make html` för att CSS:en skall medfölja.**

```bash
make html
```
Bygger webbsidan till mappen `public`.

## Fil- och Mappstruktur
Nedan följer fil- och mappstrukturen för hugo-projektet.

### config.toml
Detta är konfigurationsfilen för webbsidan. Den innehåller bl.a. basurl, sidtitel, m.m.  
**De viktiga fälten är:**

| Namn      | Beskrivning                                                                                                   |
| --------- | ------------------------------------------------------------------------------------------------------------- |
| `baseurl` | BasURL:en för hemsidan, vilken används för samtlig länkning. **OBS! Måste ändras till LIVE-URL innan byggning för release.** |
| `title`   | Titel på hemsidan.                                                                                            |
| `theme`   | Vilket tema som skall användas.                                                                               |
| `quote`   | Den undertitel som visas i bannern på startsidan                                                              |
| `email`   | Kontaktmail som ev. visas på hemsidan.                                                                        |
| `banner`  | Bilden som skall visas i bannern på starsidan (se sektionen [static](#static) för hur du lägger till bilder). |
| `logo`    | Bild till logotyp (se sektionen [static](#static) för hur du lägger till bilder).                             |

Filen ser ut som följer:
```toml
baseurl = "http://www.it.uu.se/education/course/homepage/introdat/ht16/"
languageCode = "sv-se"
title = "IntroIT 2016"
theme="introit16"

# Build settings
builddrafts = false
canonifyurls = true
disablerss = true

# Parameters
[Params]
quote = "Någon smörig enradare om UU:s datasystem"
email = "intro@it.uu.se"
banner = "images/banner.jpg"
logo = "images/logo.jpg"
```

### archetypes
Mer eller mindre mallar för när man genererar nya sidor/posts. Huvudsakligen används `archtypes` från sidans tema, men troligtvis kan dessa overridas mha. `archtypes` i denna mapp. Se https://gohugo.io/content/archetypes/ för mer info.

### content
Denna mapp innehåller samtliga markdown-filer vilka utgör innehållssidorna som genereras. Detta innefattar t.ex. inte startsidan som listar modulerna då den genereras beroende på vilka sektioner som finns.

Strukturen för markdown-filerna för introduktion till datorer 2016 för en *modul* är:
```
content
├── modulnamn.md            // <-- http://site.com/modulnamn/
└── modulnamn 
    └── uppgifter.md        // <-- http://site.com/modulnamn/uppgifter/
```

**Se sektionen "skapa ny modul" nedan för hur du enkelt kan skapa samtliga filer som krävs.**

#### content/filnamn.md
Markdownfiler placerade direkt under `content` kommer skapas som HTML-fil direkt under bas-adressen. T.ex. skulle `hello.md` för basadressen `http://mysite.dom/` skapas som `http://mysite.dom/hello/`.

#### content/mappnamn
Mappar skapade under `content` tolkas som sektioner under vilka man kan lägga ytterligare mappar (för underkategorier) eller markdownfiler för att skapa sidor. T.ex. länkas `content/mysection/world.md` med basurl `http://mysite.dom/` som `http://mysite.dom/mysection/world/`

### data
Mappen `data` tillåter att man skapar datafiler som kan användas vid generering av hemsidan. Denna webbsida använder datafiler för att spara metadata om modulerna för när de skall visas på startsidan. Metadata för en modul sparas under:
```
data
└── modules 
    └── modulnamn.toml
```

Dessa innehåller `titel` och `tagline` för modulen, vilket korresponderar mot titel- och undertitel i modulkortet som visas på startsidan. Exempel på en sådan datafil är:
```toml
title = "Min modultitel"
tagline = "En underbar modul att läsa"
```
**Se sektionen "skapa ny modul" nedan för hur du enkelt kan skapa samtliga filer som krävs.**

För mer information om datafiler i hugo, se https://gohugo.io/extras/datafiles/.

### layouts
Används ej då samtliga layoutfiler laddas från temat. Troligtvis kan layoutfiler från temat overridas genom att läggas in här.

Layoutfiler är de filer som markdown- och annan data placeras i för att generera HTML-filerna för webbsidan.

### static
Här läggs statisk data för hemsidan som inte är direkt kopplad till temat/mallen. Exempel på statiska filer är **bilder** som skall läggas in i artiklarna. Helt enkelt alla resurser till modulerna som **inte** är faktiska texten.

```
static
├── images           // Bilder till moduler/artiklar
|   └── icons       // Ikoner till modulerna (ex. linux-plus.png) kan läggas till/overridas
└── res              // Resurser till moduler (ex. zip-filer och annat nedladdningsbart)
```

För bilder kommer då sökvägen bli `http://site.com/images/myimage.jpg` och resurser `http://site.com/res/myarchive.zip`.

### themes/introit16
Denna mapp innehåller temat/mallen för hemsidan. Strukturen i denna är nästintill likadan som de ovan nämnda delarna, därav kommer delar av temat referera till ovanstående sektioner.

#### archetypes
Innehåller `archtype` för markdownfiler och datafiler (.toml). Se [archetypes](#archetypes) ovan för mer info.

#### layouts
Här finns samtliga layout-filer som används för att generera HTML-sidorna.

##### layouts/index.html
Denna används för att generera startsidan (modulkorten).

##### layouts/_default
Dessa layouter används vid generering av infosidorna (främst `single.html`).

##### layouts/partials
Innehåller layouter för de gemensamma sidhuvud- och sidfotsdelarna i sidorna. Javascript är inkluderat via `footer.html`.

##### layouts/shortcodes
Används för att definiera s.k. [shortcodes](https://gohugo.io/extras/shortcodes/) för Hugo. Dessa används för att ex. lägga in figurer och liknande. Det finns en del fördefinierade i Hugo och mer info om dessa finns på https://gohugo.io/extras/shortcodes/.

Exempel på en shortcode är att inkludera en bild i en sida:
```
{{< figure src="images/example.jpg" title="Exempelfigur med caption" >}}
```

#### static
All statisk data för temat/mallen finns i denna mapp.

##### static/css
Här sparas all genererad CSS.
**Ändra ingen CSS i denna mapp, alla stiländringar skall ske i `SCSS/style.scss`.**

##### static/images
Här finns alla grundläggande bilder för temat/mallen.

##### static/js
Här finns alla javascript som används av temat/mallen. I filen `introit.js` finns den kod som skrivits specifikt för hemsidan.

##### static/scss
Här finns den sass/scss-fil, `style.scss`, som används för att generera CSS för hemsidan. **Samtlig styling av hemsidan finns i filen `style.scss`**

För att manuellt bygga CSS-filen (aka. inte använda make-reglerna) kan följande kommando användas om man står i rotmappen:
```bash
scss -t compressed themes/introit16/static/scss/style.scss themes/introit16/static/css/style.css
```
