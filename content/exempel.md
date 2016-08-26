+++
date = "2016-06-16T15:45:10+02:00"
menu = "exempel"
module = "exempel"
title = "Exempelmodul"
draft = true

lastmod = "2016-08-18T12:54:33+02:00"
+++

Större delen av [GitHubs Markdown-tutorial](https://guides.github.com/features/mastering-markdown/) går använda, **med undantag för hur bilder inkluderas**.

***

### Innehåll

- [Titlar](#titlar-headings)
- [Paragrafer, radbrytningar och citatblock](#paragrafer-radbrytningar-och-citatblock)
- [HR - Horisontell linje (horizontal rule)](#hr-horisontell-linje-horizontal-rule)
- [Textformatering](#textformatering)
- [Listor](#listor)
- [Länkar](#länkar)
- [Kod/Kodexempel och syntax highlighting](#kod-kodexempel-och-syntax-highlighting)
    - [Inline-kod](#inline-kod)
    - [Kodblock](#kodblock)
- [Tabeller](#tabeller)
- [Bilder/Figurer](#bilder-figurer)
- [Mathjax](#mathjax)


## Titlar/Headings

# H1 header
## H2 header
### H3 header
#### H4 header
##### H5 header
###### H6 header

Alternativ H1
=============

Alternativ H2
-------------

Detta är de olika headers som finns (*H1-H6*). I markdown-format ser de ut såhär:
```text
# H1 header
## H2 header
### H3 header
#### H4 header
##### H5 header
###### H6 header


Alternativ H1
=============

Alternativ H2
-------------
```

## Paragrafer, radbrytningar och citatblock
För att skapa nya paragrafer, lämna helt enkelt en tom rad mellan paragraferna.

För att skapa en radbrytning som inte skapar ny paragraf,  
lämna två mellanslag i slutet av meningen så blir det på detta sätt.

> Man kan även skapa citatblock på detta vis, vilket kan vara väldigt användbart ibland.

> Ett citatblock kan även gå över flera rader. Detta är del av samma citatblock.

Men de kan brytas av text.

> Så detta är ett nytt citetblock.

***

**_I detta kodexempel markeras mellanslag för enkel radbrytning med "⋅"-symbolen._**
```text
För att skapa nya paragrafer, lämna helt enkelt en tom rad mellan paragraferna.

För att skapa en radbrytning som inte skapar ny paragraf,⋅⋅
lämna två mellanslag i slutet av meningen så blir det på detta sätt.

> Man kan även skapa citatblock på detta vis, vilket kan vara väldigt användbart ibland.

> Ett citatblock kan även gå över flera rader. Detta är del av samma citatblock.

Men de kan brytas av text.

> Så detta är ett nytt citetblock.
```

## HR - Horisontell linje (horizontal rule)
Denna går lägga in via tre asterixer, bindestreck eller understreck:

---
***
___

```text
---
***
___
```

## Textformatering

Kursiv text via *asterixer* eller _understreck_.

Fetstil via **dubbla asterixer** eller __dubbla understreck__.

Kombination av **fetstil och _kursiv_**.

Genomstryckning via dubbbla tilde: ~~genomstrykt text~~.

***

```text
Kursiv text via *asterixer* eller _understreck_.

Fetstil via **dubbla asterixer** eller __dubbla understreck__.

Kombination av **fetstil och _kursiv_**.

Genomstryckning via dubbbla tilde: ~~genomstruken text~~.
```

## Listor

**Det finns både numrerade och onumrerade listor, vilka kan kombineras på lite olika sätt:**

1. Första elementet i en numrerad lista
   1. Nivå 2
   2. Fortsättning nivå 2
      1. Nivå 3
      2. Fortsåttning nivå 3
         1. Nivå 4
             1. etc.

- Första elementet i en onumrerad lista
- Andra elementet
  + Nivå 2
     - Nivå 3
          * Nivå 4
              + Och punktlista kan använda sig av
              - både *, + och -


1. Här blandar vi listor och funktionalitet
2. Till exempel:

     En paragraf går även ha i en lista.  
     Detta åstadkoms genom att indentera paragrafen under listelementet/listdeklarationen.

2. Och vi kan ha en punktlista i en numrerad lista:
   * Som vi har här
   * Man kan också
     1. ha en numrerad lista
         - med punktlista
              1. med numrerad lista
                  - etc...

***

```text
1. Första elementet i en numrerad lista
   1. Nivå 2
   2. Fortsättning nivå 2
      1. Nivå 3
      2. Fortsåttning nivå 3
         1. Nivå 4
             1. etc.

- Första elementet i en onumrerad lista
- Andra elementet
  + Nivå 2
     - Nivå 3
          * Nivå 4
              + Och punktlista kan använda sig av
              - både *, + och -


1. Här blandar vi listor och funktionalitet
2. Till exempel:

     En paragraf går även ha i en lista.  
     Detta åstadkoms genom att indentera paragrafen under listelementet/listdeklarationen.

2. Och vi kan ha en punktlista i en numrerad lista:
   * Som vi har här
   * Man kan också
     1. ha en numrerad lista
         - med punktlista
              1. med numrerad lista
                  - etc...
```


## Länkar
Länkar går skriva på ett antal olika sätt:

[Via "direktlänkning"](https://www.google.com)

[Direktlänkning med titel](https://www.google.com "Bästa sökmotorn?")

[Länkning via referens-stil][referenstext som inte bryr sig om gemener eller versaler] *(Bra om länken är återkommande)*

[Det går även använda siffror för referenslänkning][1]

Eller använda [referenstexten självt].

Det går även direkt skriva URL:en eller URL:en i "vinkelparentes":  
http://www.example.com eller <http://www.example.com>.

Det spelar heller ingen roll var i dokumentet man lägger referenserna, därav ligger denna paragraf för att visa detta.

[Referenstext som inte bryr sig om gemener eller VERSALER]: https://www.mozilla.org
[1]: http://slashdot.org
[referenstexten självt]: http://www.reddit.com

***
**I detta kodexempel har symbolen ">" lagts framför referenserna då de annars inte renderades som text.  
DESSA SKALL EGENTLIGEN INTE VARA DÄR.**
```text
[Via "direktlänkning"](https://www.google.com)

[Direktlänkning med titel](https://www.google.com "Bästa sökmotorn?")

[Länkning via referens-stil][referenstext som inte bryr sig om gemener eller versaler] *(Bra om länken är återkommande)*

[Det går även använda siffror för referenslänkning][1]

Eller använda [referenstexten självt].

Det går även direkt skriva URL:en eller URL:en i "vinkelparentes":  
http://www.example.com eller <http://www.example.com>.

Det spelar heller ingen roll var i dokumentet man lägger referenserna, därav ligger denna paragraf för att visa detta.

> [Referenstext som inte bryr sig om gemener eller VERSALER]: https://www.mozilla.org
> [1]: http://slashdot.org
> [referenstexten självt]: http://www.reddit.com
```
**I detta kodexempel har symbolen ">" lagts framför referenserna då de annars inte renderades som text.  
DESSA SKALL EGENTLIGEN INTE VARA DÄR.**

## Kod/Kodexempel och syntax highlighting
Det finns två sätt att markera upp kod i ett dokument.

### Inline-kod
**Detta görs genom att omsluta texten/koden med enkla \`-tecken.**

> Variabeln som används heter \`variabelnamn\` och är av typen \`String\`.

> **blir**

> Variabeln som används heter `variabelnamn` och är av typen `String`.


> Ett exempelanrop är \`let a = new Array();\`.

> **blir** 

> Ett exemeplanrop är `let a = new Array();`.

### Kodblock
**Den andra varianten är kodblock, vilka även stödjer highlighting.**  
**Detta görs genom att använda trippla \`-tecken.**


> \`\`\`  
> Som detta där highlightern försöker markera upp kod.  
> \`\`\`

> **blir**
```
Som detta där highlightern försöker markera upp kod.
```



**Man kan även specificera vilket språk kodblocket innehåller. t.ex. javascript:**

> \`\`\`javascript  
> function logHello() {  
>     console.log("Hello console");  
> }  
> \`\`\`

> **blir**
```javascript
function logHello() {
    console.log("Hello console");
}
```

***

**För att slippa highlighting kan man använda "språket" text:**

> \`\`\`text  
> Som detta där highlightern inte längre försöker markera upp kod.  
> \`\`\`

> **blir**
```text
Som detta där highlightern inte längre försöker markera upp kod.
```

## Tabeller

Tabeller är relativt enkla att lägga till i markdown. Denna tabbel, till exempel:

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |


**Skrivs på detta sätt.**  
*Notera att kolon-tecknen (:) på rad 2 bestämmer hur texten skall positioneras i kolumnen.*

```text
| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |
```

## Bilder/Figurer
**Bilder/Figurer läggs in mha. hugos s.k. "shortcodes". För att lägga in en bild skriver du:**  
*Notera att sökvägen måste börja med `/` för att filen skall hittas.*

\{\{< figure src="/images/example.jpg" title="Exempelfigur med caption" >}}


**vilket blir**

{{< figure src="/images/example.jpg" title="Exempelfigur med caption" >}}



För mer info om shortcode *figure*, se [hugos dokumentation](https://gohugo.io/extras/shortcodes/#figure)


## Mathjax
Mathjax finns att tillgå i sidinformationen. För att lägga till matematiska formler används TEX-notation för matematik.

**T.ex.:**

``` tex
When $a \ne 0$, there are two solutions to $ax^2 + bx + c = 0$ and they are
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$
```

**blir**

When $a \ne 0$, there are two solutions to $ax^2 + bx + c = 0$ and they are
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$
