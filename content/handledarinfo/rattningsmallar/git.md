+++
date = "2016-08-04T13:07:13+02:00"
menu = "handledarinfo"
module = "git"
title = "Rättning GIT"

lastmod = "2016-08-25T13:52:12+02:00"
+++

Git-uppgiften går ut på att skapa ett git-repo, lägga till filer och committa
dessa samt hantera en merge-konflikt.

### För att eleven skall bli godkänd krävs
*Mer detaljerad information om punkterna finns efter listan, tillsammans med en
beskrivning hur en kontroll kan utföras.*

1. Repot/Mappen samt tar-filen innehåller elevens student-ID
2. Det existerar ett git-repo i mappen
   - Kontrollera detta mha. `git status`
3. Git-repot innehåller två branches:
   - `master`
   - `mitt-urval`
4. Mappen innehåller samtliga förväntade filer och inga extra filer.
5. I branch `master`:
   + Filen `introduktionskurs.txt` innehåller korrekt block med information
     om elevens introkurs.
   + Filen `urval.txt` innehåller tre till fem rader med **olika** kurser.
   + Från filen `kurser.txt` skall tre rader klippts ut.
6. I branch `mitt-urval`:
   + Filen `urval.txt` skall innehålla två rader med **olika** kurser.
   + Filen `kurser.txt` skall vara intakt.
7. Commit-historik
   + I samtliga *log*-meddelanden skall elevens ID och studentmail stå som author.
   + Samtliga specificerade *commits* skall finnas närvarande i git log, helst
     i samma ordning som exemplet nedan.
   + Det skall finnas en merge från mitt-urval till master

***
`OBS!` **Om commit-historiken innehåller alla obligatoriska commits _och_ flertalet
andra commits blir eleven godkänd OM det går se att denne utfört uppgiften på det
sätt som förväntats.**
***

## Detaljerad beskrivning
### 1. Kontrollera mappnamn
Börja med att packa upp mappen ur tar-filen. Detta kan göras med följande
kommando:
``` shell
tar -zxf abcd1234_git.tar.gz
```

<br/>
### 2. git-repo existerar
För att testa huruvida ett git-repo existerar kan du använda kommandot
`git status`. Om ett repo **existerar** får du följande meddelande:

``` shell
On branch master
nothing to commit, working directory clean
```

Om ett repo **inte existerar** får du följande meddelande:

``` shell
fatal: Not a git repository (or any parent up to mount point /home/kira)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set).
```

<br/>
### 3. Git-repot innehåller båda branches
Uppgiften specificerar att en ny branch kallad `mitt-urval` skall skapas,
så repot skall innehålla denna samt `master`. Kontrollera detta genom
att köra kommandot:

``` shell
git branch
```

Då skall du se följande:

``` shell
* master
  mitt-urval
```

<br/>
### 4. Mappen innehåller samtliga förväntade filer
Mappen skall innehålla dessa filer och endast dessa filer:

``` text
.
├── introduktionskurs.txt
├── kurser.txt
└── urval.txt
```

<br/>
### 5. I branch `master`
#### introduktionskurs.txt
Denna fil skall innehålla korrekt block för programmets introduktionskurs.
I och med att modulen endast är obligatorisk för IT/KandDV skall innehållet
i denna fil vara:

``` text
IT/KandDv
1DT051
Introduktion till informationsteknologi
Institutionen för informationsteknologi
0002
2
```

#### urval.txt
Denna fil skall innehålla tre (3) till fem (5) **unika** rader med kurser från
filen `kurser.txt`.

#### kurser.txt
Från denna fil skall eleven ha klippt ut tre rader med kurser. För att
kontrollera detta kan du köra följande kommando:

``` shell
git diff $(git rev-list --max-parents=0 HEAD) kurser.txt
```

Detta kommando jämför filen kurser.txt i nuvarande läge mot första committen. Fu
bör se något liknande detta som resultat:

``` diff
diff --git a/kurser.txt b/kurser.txt
index c9b781e..db9f63d 100644
--- a/kurser.txt
+++ b/kurser.txt
@@ -1,8 +1,5 @@
1TT900, Adaptiva system, Adaptive Systems, 6.0 hp
1RT180, Adaptiva system MN1, Adaptive Systems, 7.5 hp
-1TT401, Algoritmer för parallellmaskiner, Algorithms for Parallel Computers, 6.0 hp
-1TT330, Algoritmer och datastrukturer, Algorithms and Data Structures, 6.0 hp
-1DL113, Algoritmer och datastrukturer 3, Algorithms and Data Structures 3, 7.5 hp
1TD442, Algoritmer och datastrukturer DV1, Algorithms and Data Structures DV1, 9.0 hp
1TD440, Algoritmer och datastrukturer DV1, Algorithms and Data Structures DV1, 7.5 hp
2AD091, Algoritmer och datastrukturer DV2, Algorithms and Data Structures DV2, 6.0 hp
```

**En kortare version**  
En kortare version av diffen går få ut mha:
``` shell
git diff --numstat $(git rev-list --max-parents=0 HEAD) kurser.txt
```
vilken listar **additions**, **deletions** och **filename** i sagd ordning:

``` text
0       3       kurser.txt
```

<br/>
### 6. Branch `mitt-urval`
Byt till branch `mitt-urval` genom:
``` shell
git checkout mitt-urval
```
#### urval.txt
Filen skall innehålla två unika rader **kopierade** från filen `kurser.txt`.

#### kurser.txt
I denna branch skall kurser.txt int diffa från initiala committen. Om du kör
följande kommando skall du inte få någon utskrift:

``` shell
git diff $(git rev-list --max-parents=0 HEAD) kurser.txt
```

<br/>
### 7. Commit-historik
*Kontrollera att detta stämmer för både `master` och `mitt-urval`.*

För samtliga commits skall studentens ID och mailadress vara satta som author.

#### master
För att kontrollera commit-historiken, använd kommandot:
``` shell
git log
```

De commits som skall finnas närvarande, och helst i denna ordning, är:  

***
`OBS!` **Notera att det måste finnas en commit som är en merge. Detta kan du
se på att en extra rad med titel _merge_ finns i log-meddelandet (se första
posten i exemplet nedan).**
***
*Notera att initial commit kan vara valfritt meddelande.*

``` shell
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



#### mitt-urval
PSS. som master, men denna innehåller inte någon merge och endast
(förhoppningsvis) två commits:

``` shell
commit a589839c0c81febb43ad193d9aa730466744b0de
Author: abcd1234 <abcd1234@student.uu.se>
Date:   Sun Sep 4 16:10:51 2016 +0200
    
kopierade kurser till urval
    
commit 725e1f9acc10bc37b9fc0083b12afaaffe9a197a
Author: abcd1234 <abcd1234@student.uu.se>
Date:   Sun Sep 4 16:09:19 2016 +0200

initial commit
```
