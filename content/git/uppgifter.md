+++
date = "2016-08-04T12:52:12+02:00"
menu = "git"
module = "git"
title = "GIT/Uppgifter"

+++

## Innehåll


+ [Mål](#mål)
+ [Material som krävs](#material-som-krävs)
+ [Uppgift](#uppgift)
	+ [Del 1: Skapa ett git-repository](#del-1-skapa-ett-git-repository)
		+ [Lokal (per repo) konfiguration](#lokal-per-repo-konfiguration)
		+ [Global konfiguration](#global-konfiguration)
	+ [Del 2: Lägg till nya filer](#del-2-lägg-till-nya-filer)
	+ [Del 3: Skapa en ny branch](#del-3-skapa-en-ny-branch)
	+ [Del 4: Byta gren och modifiera filer](#del-4-byta-gren-och-modifiera-filer)
	+ [Del 5: Merge & merge-konflikt](#del-5-merge-&-merge-konflikt)
	+ [Slutgiltigt repo](#slutgiltigt-repo)
+ [Inlämning](#inlämning)

## Mål
I denna uppgift finns följande huvudsakliga mål:

- Skapa ett nytt git-repository
- Lägga till och committa filer
- Skapa nya grenar
- Hantera merge-konflikter

## Material som krävs

## Uppgift

### Del 1: Skapa ett git-repository
Öppna terminalen och navigera till din hemmapp. Skapa en ny mapp
som du döper till `abcd1234_git`, där du ersätter `abcd1234` med
användarnamnet för ditt studentkonto. Navigera därefter till
denna mapp.

Väl inne i mappen, initiera ett nytt git-repo:
```
git init
```
#### Lokal (per repo) konfiguration
För att vi skall veta vem som utfört ändringar och liknande behöver
du Konfigurera repot med ditt användarnamn och din e-postadress. Detta
gör du genom följande kommandon **när du står i ditt repo**.

```none
$ git config user.name "abcd1234"
$ git config user.email "abcd1234@student.uu.se"
```
Även här ersätter du `abcd1234` med användarnamnet för ditt studentkonto.

*På detta sätt har du ställt in det användardamnet- och epostadressen för
endast detta repo.*

#### Global konfiguration
Det går även konfigurera git globalt, vilket gör att dina inställningar
används för alla nya repon du skapar- samt alla repon du inte ställt in
redan. För att göra detta används `--global`-flaggan. Såhär ser inställningarna
ut då:
```none
$ git config --global user.name "abcd1234"
$ git config --global user.email "abcd1234@student.uu.se"
```

### Del 2: Lägg till nya filer
Nu skall vi lägga till filer i det nya repot. För att ha något att arbeta med
skall vi hämta en fil som redan har ett innehåll. Detta görs enkelt genom
att klistra in följande kommando i terminalen och köra det:
```none
curl "http://www.it.uu.se/education/course/homepage/introdat/ht16/resources/kurser.txt" -o kurser.txt
```
När kommandot är färdigt bör du ha en fil kallad `kurser.txt` i ditt repo. Du skall nu checka in
den nya filen och därefter göra en commit med kommentaren "**lade till kurser.txt**".

### Del 3: Skapa en ny branch
Nu skall du skapa en ny branch som skall kallas `mitt-urval` och byta till denna.
När du bytt till denna nya branch skall du skapa filen `urval.txt`. I denna fil skall
du lägga till **3 kurser ur kurser.txt**.

**`OBS!` ta ej bort kurserna ur kurser.txt, kopiera dem.**

Spara sedan filen, checka in den och committa med meddelandet **"kopierade kurser till urval"**.

### Del 4: Byta gren och modifiera filer
Nu skall vi byta tillbaka till `master`. Här skall vi nu skapa filen `urval.txt` på nytt.
När du gjort det skall du **klippa ut tre kurser ur _kurser.txt_** och lägga till dem i
`urval.txt`. När du gjort detta skall du checka in både den nya filen och ändringarna i
*kurser.txt*, för att sedan committa dem med meddelandet **"flyttade kurser till urval"**.

### Del 5: Merge & merge-konflikt
Nu skall vi slå samman ändringarna från vår branch `mitt-urval` med vår `master`-branch.
När du gör detta kommer du märka att en merge-konflikt uppstår då vi lagt till
filen `urval.txt` i både mitt-urval och master. *Notera att vi inte får konflikt i
kurser.txt då vi bara ändrat denna i en branch*.

**Din uppgift är att lösa konflikten i `urval.txt` så att alla kurser du valt finns med
endast en gång var**. När du löst konflikten, checka in ändringarna och committa med
meddelandet **"löste konflikt"**.

### Slutgiltigt repo
När du är färdig med uppgiften bör ditt repo se ut såhär:

```none
.
├── abcd1234_git
    ├── kurser.txt
    └── urval.txt
```
om du kör `git branch` bör du se detta:
```none
* master
  mitt-urval
```

och om du kör `git log` bör loggen se ut något liknande detta:

**Om du stött på problem under uppgiftens gång och har ett fåtal
fler poster än exemplet nedan gör det inget, så länge samtliga
poster finns närvarande och det går se att du utfört
stegen som beskrivts ovan**.

```none
commit ea926724103ce4f399b63a8c1abfdf0e35109c44
Merge: c5150d9 ee7cdd9
Author: abcd1234 <abcd1234@student.uu.se>
Date:   Mon Aug 15 20:46:06 2016 +0200

    löste konflikt

commit c5150d9eb273958613067e2b19ed0604f76bc0eb
Author: abcd1234 <abcd1234@student.uu.se>
Date:   Mon Aug 15 20:43:32 2016 +0200

    flyttade kurser till urval

commit ee7cdd91e9869386859af8856ea2b2703db49aca
Author: abcd1234 <abcd1234@student.uu.se>
Date:   Mon Aug 15 20:42:02 2016 +0200

    kopierade kurser till urval

commit 78ec16cf653f2ee67e3bf9b19745b0b5c873c32f
Author: abcd1234 <abcd1234@student.uu.se>
Date:   Mon Aug 15 20:39:56 2016 +0200

    lade till kurser.txt
```


## Inlämning
Komprimera mappen `abcd1234_git` till en zip-fil och döp denna till `abcd1234_git.zip`, där du
ersätter `abcd1234` med användarnamnet för ditt studentkonto.

**`OBS!` Det räcker inte att komprimera filerna som finns i mappen, utan hela mappen måste komprimeras.
Annars tappas git-historiken och git-informationen som används för att kontrollera inlämningsuppgiften.**

Ladda upp filen i studentportalen.
