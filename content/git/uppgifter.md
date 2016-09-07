+++
date = "2016-08-04T12:52:12+02:00"
menu = "git"
module = "git"
title = "GIT/Uppgifter"

lastmod = "2016-08-29T12:28:32+02:00"
+++

## Innehåll

+ [Mål](#mål)
+ [Detta behöver du](#detta-behöver-du)
+ [Uppgift](#uppgift)
    + [Del 1: Klona ett befintligt git-repository](#del-1-klona-ett-befintligt-git-repo)
	+ [Del 2: Skapa ett nytt git-repo](#del-2-skapa-ett-nytt-git-repo)
		+ [Lokal (per repo) konfiguration](#lokal-per-repo-konfiguration)
		+ [Global konfiguration](#global-konfiguration)
	+ [Del 3: Lägg till nya filer](#del-3-lägg-till-nya-filer)
	+ [Del 4: Skapa en ny branch](#del-4-skapa-en-ny-branch)
	+ [Del 5: Byta gren och modifiera filer](#del-5-byta-gren-och-modifiera-filer)
	+ [Del 6: Merge & merge-konflikt](#del-6-merge-merge-konflikt)
	+ [Slutgiltigt repo](#slutgiltigt-repo)
+ [Inlämning](#inlämning)

## Mål
Efter att du blivit godkänd på denna uppgift kommer du att känna till hur du använder Git för att:

- klona ett befintligt git-repository
- skapa ett nytt git-repository
- lägga till och committa filer
- skapa nya grenar
- hantera merge-konflikter.

## Detta behöver du 
Uppgiften är testad och går utföra på Uppsala universitets linuxsystem,
men går även genomföra på egen dator om Git finns tillgängligt.

**`OBS!` Det är starkt rekommenderat att du går genom
[terminal-modulen](/terminalen) innan du påbörjar Git.**


Du kommer behöva:

- en terminal
- git

## Uppgift

Materialet som tas upp i uppgiften diskuteras på [infosidan för Git](../).

Ett git-repository är en katalog som hanteras av Git. För enkelhets skull kommer
*git-repo* fortsättningsvis att användas synonymt med *git-repository*. 

***
`OBS!` **Det är viktigt att samtliga delar av uppgiften utförs i korrekt ordning,
annars kommer inlämningen inte stämma och kommer troligt resultera i komplettering!**
***
### Del 1: Klona ett befintligt git-repo

På många kurser kommer du utgå från befintliga filer för att lösa olika typer av
uppgifter. Ett vanligt sätt att hantera detta, speciellt på
programmeringskurser, är att dessa filer finns tillgängliga i publikt
git-repo och att du hämtar hem dem genom att klona detta repo. 

De filer du skall hämta hem denna gång finns på följande publika repo på
GitHub:

- {{< extlink link="https://github.com/uu-it-teaching/introduktion-till-datorer-2016-git-uppgift" 
     title="https://github.com/uu-it-teaching/introduktion-till-datorer-2016-git-uppgift" >}}

Om du klickar på länken ovan bör en ny flik eller ett nytt fönster öppnas och du
kan där bland annat se vilka filer som ingår i detta repo. Sidan som
öppnas bör se ut ungefär som på bilden nedan. 

{{< figure src="/images/git/git-GitHub-repository.png" 
title="Publikt repo på GitHub med filer du behöver för att lösa denna uppgift" >}}

Du kan direkt i din webläsare kika på innehållet i filerna. Prova till exempel
att klicka på filen `dikt.txt` och se vad den innehåller.

Istället för att ladda ner filerna en och en skall du klona hela repot.
Öppna terminalen och navigera till din hem-mapp. Väl inne i mappen, klona
repot genom att köra kommandot:

```shell
git clone https://github.com/uu-it-teaching/introduktion-till-datorer-2016-git-uppgift.git
```

I terminalen bör du nu se något liknande detta: 

```shell
Cloning into 'introduktion-till-datorer-2016-git-uppgift'...
remote: Counting objects: 12, done.
remote: Compressing objects: 100% (10/10), done.
remote: Total 12 (delta 0), reused 6 (delta 0), pack-reused 0
Unpacking objects: 100% (12/12), done.
Checking connectivity... done.
```

Som resultat av kloningen har nu katalogen
`introduktion-till-datorer-2016-git-uppgift` skapats. Navigera till denna
katalog.


```shell
cd introduktion-till-datorer-2016-git-uppgift  
```

Du kan nu lista alla filer i den nya katalogen:

```shell
ls -1
```

Med hjälp av flaggan `-1` (siffran 1, inte bokstaven l) listas namnen på alla
filer (och kataloger) på en egen rad och i terminalen bör du nu se följande: 

```shell
README.md
dikt.txt
introduktionskurser.txt
kurser.txt
strunt.txt
```

Du har nu lyckats klona repot och vi kommer återkomma till filerna i detta
repo längre fram. 

### Del 2: Skapa ett nytt git-repo

Navigera till din hem-mapp i terminalen. Skapa en ny mapp
som du döper till `abcd1234_git`, där du ersätter `abcd1234` med
användarnamnet för ditt studentkonto. Navigera därefter till
denna mapp.

Väl inne i mappen, initiera ett nytt git-repo:
```
git init
```

När du skapat repot skall du ställa in namn och e-post. Det
är denna information git (och system som github) använder för att
identifiera vem som utfört specifika ändringar. **Det är viktigt
att du ställer in detta korrekt så vi kan se att det är du som
utfört ändringarna i uppgiften**.

Det finns två sätt att göra detta, **lokalt** och **globalt**:

#### Lokal (per repo) konfiguration
Det går konfigurera denna information på en "per repo"-basis, dvs.
det är möjligt att ställa in olika mailadresser och namn för olika
repon. För att ställa in detta för ett enskilt repo navigerar du
till repo-mappen och skriver följande kommandon:

```shell
git config user.name "abcd1234"
git config user.email "abcd1234@student.uu.se"
```
Även här ersätter du `abcd1234` med användarnamnet för ditt studentkonto.

*På detta sätt har du ställt in det användardamnet- och e-postadressen för
endast detta repo.*

#### Global konfiguration
Det går även konfigurera git globalt, vilket gör att dina inställningar
används för alla nya repon du skapar- samt alla repon du inte ställt in
redan. För att göra detta används `--global`-flaggan. Såhär ser inställningarna
ut då:

```shell
git config --global user.name "abcd1234"
git config --global user.email "abcd1234@student.uu.se"
```

Detta är t.ex. väldigt bekvämt om man brukar använda samma namn och mailadress
i de flesta fall.

<br/>

### Del 3: Lägg till nya filer

Du skall nu lägga till filer i ditt nya repo.

I ditt nya repository, skapa en ny textfil med namn `introduktionskurs.txt`. I denna fil
skall du kopiera in blocket med information om din utbildnings introduktionskurs
som du hittar i filen `introduktionskurser.txt` som redan skall finnas
repot `introduktion-till-datorer-2016-git-uppgift` som du redan skapat
(klonat) i [del 1](#del-1-klona-ett-befintligt-git-repo).


Du skall även lägga till en kopia av filen `kurser.txt` som du redan laddat ner
när du klonade ett befintligt repot i
[del 1](#del-1-klona-ett-befintligt-git-repo). Detta kan du göra direkt
från terminalen genom att:

- Navigera till din hem-mapp. 
- Använda kommandot `cp` för att kopiera filen:
    - `cp introduktion-till-datorer-2016-git-uppgift/kurser.txt abcd1234_git`,
      där du ersätter `abcd1234` med användarnamnet för ditt studentkonto.


Kontrollera att du har filerna `introduktionskurs.txt` och `kurser.txt` i ditt nya
repo. 

För att se status för repot, kör kommandot `git status` i terminalen. Git
berättar nu följnade: 

```shell
On branch master

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)

       	introduktionskurs.txt
       	kurser.txt

nothing added to commit but untracked files present (use "git add" to track)
```

För att Git skall hålla reda på historiken på de två nya filerna måste de först
läggas till med kommondot `git add`.

```shell
git add introduktionskurs.txt kurser.txt
```

Kontrollerar du status igen med kommandot `git status` berättar Git följande:

```shell
On branch master

Initial commit

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

       	new file:   introduktionskurs.txt
       	new file:   kurser.txt
```

Git känner nu till filerna och du kan spara nuvarande versioner av dessa med kommandot `git
commit -m "Initial commit"` där du kan byta ut meddelandet *Initial commit*
till något annat om du så önskar. I terminalen bör du nu se något liknande: 

```shell
[master (root-commit) c2a7571] Initial commit
 2 files changed, 583 insertions(+)
 create mode 100644 introduktionskurs.txt
 create mode 100644 kurser.txt
```

Slutligen, om du testar status igen med kommandot `git status` berättar Git
följande:

```shell
On branch master
nothing to commit, working directory clean
```

<br/>
### Del 4: Skapa en ny branch
Nu skall du skapa en ny branch som skall kallas `mitt-urval` och byta till denna:
```shell
git checkout -b <branch-name>
```

När du bytt till denna nya branch skall du skapa filen `urval.txt`. I denna fil skall
du lägga till **`2st` kurser ur kurser.txt**.

**`OBS!` ta ej bort kurserna ur kurser.txt, kopiera dem.**

Spara sedan filen, checka in den och committa med meddelandet **"kopierade kurser till urval"**.

<br/>
### Del 5: Byta gren och modifiera filer
Nu skall vi byta tillbaka till `master`. Här skall vi nu skapa filen `urval.txt` på nytt.
När du gjort det skall du **klippa ut `3st` kurser ur _kurser.txt_** och lägga till dem i
`urval.txt`. När du gjort detta skall du checka in både den nya filen och ändringarna i
*kurser.txt*, för att sedan committa dem med meddelandet **"flyttade kurser till urval"**.

<br/>
### Del 6: Merge & merge-konflikt
Nu skall vi slå samman ändringarna från vår branch `mitt-urval` med vår `master`-branch.
När du gör detta kommer du märka att en merge-konflikt uppstår då vi lagt till
filen `urval.txt` i både mitt-urval och master. *Notera att vi inte får konflikt i
kurser.txt då vi bara ändrat denna i en branch*.

**Din uppgift är att lösa konflikten i `urval.txt` så att alla kurser du valt finns med
endast en gång var**. När du löst konflikten, checka in ändringarna och committa med
meddelandet **"löste konflikt"**.

<br/>
### Slutgiltigt repo
När du är färdig med uppgiften bör ditt repo se ut såhär:

```shell
.
└── abcd1234_git
    ├── .git         #(vanligtvis dold mapp med all git-data för repot)
    ├── introduktionskurs.txt
    ├── kurser.txt
    └── urval.txt
```
om du kör `git branch` bör du se detta:
```shell
* master
  mitt-urval
```

och om du kör `git log` bör loggen se ut något liknande detta:

**Om du stött på problem under uppgiftens gång och har ett fåtal
fler poster än exemplet nedan gör det inget, så länge samtliga
poster finns närvarande och det går se att du utfört
stegen som beskrivts ovan**.

```shell
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

    initial commit (eller valfritt meddelande)
```


## Inlämning
Komprimera mappen `abcd1234_git` till en tar.gz-fil och döp denna till `abcd1234_git.tar.gz`, där du
ersätter `abcd1234` med användarnamnet för ditt studentkonto.

   + *För att komprimera till gzip och skriva ut alla inkluderade filer och mappar använder du kommandot `tar` tillsammans med flaggorna `-cvzf`.*
   + *Mer information om hur du komprimerar mappar med kommandot `tar` hittar du här: [Terminalen/Komprimerade mappar](/terminalen/#komprimerade-mappar).*


**`OBS!` Det räcker inte att komprimera filerna som finns i mappen, utan hela mappen måste komprimeras.
Annars tappas git-historiken och git-informationen som används för att kontrollera inlämningsuppgiften.**

Ladda upp filen i Studentportalen.
