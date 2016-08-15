+++
date = "2016-08-04T12:52:12+02:00"
menu = "git"
module = "git"
title = "GIT/Uppgifter"

+++

## Innehåll

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


### Del 3: Skapa en ny gren och modifiera filer

### Del 4: Byta gren och merga med huvudgren

### Del 5: Lösa merge-konflikt

### Slutgiltigt repo
När du är färdig med del 1-5 bör ditt git-repo se ut såhär:


## Inlämning
Komprimera mappen till en zip-fil och döp denna till `abcd1234_git.zip`, där du
ersätter `abcd1234` med användarnamnet för ditt studentkonto.

Ladda upp filen i studentportalen.
