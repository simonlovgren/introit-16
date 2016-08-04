+++
date = "2016-05-04T09:31:00+02:00"
menu = "git"
module = "git"
title = "GIT"

+++

# Git

## Vad är Git

Git är ett revisionshanteringssystem, främst tänkt att användas för
kod. Det innebär att det är ett verktyg för att samarbeta kring kod,
spåra ändringar -- och historik. Systemet utvecklades från början av
Linus Torvalds till Linuxkärnans källkod, men är idag ett av de
vanligaste verktygen för att samarbeta kring kod både inom fri
programvaruvärlden och industrin. I princip är Git alltså en bättre
version av att hela tiden maila nya versioner av ett program man arbetar
på till hela gruppen (eller lägga koden i Dropbox), och räkna upp en
siffra för varje ny version.

I princip arbetar Git med ett trädliknande modell. Varje textfil delas
upp i ett antal mindre block, och ändringar till dessa block lagras. Det
betyder att ändringar kan spolas både framåt och bakåt, jämföras och
slås ihop. Vi kommer här att visa några exempel på hur man kan arbeta
med Git för att samarbeta i ett kodprojekt liknande de som ni kommer att
arbeta i under er utbildning.

### Viktiga principer

En "git-repository" är en samling av filer och mappar som Git håller
koll på- och hanterar ändringar i. Varje git-repository har en egen
mapp, som kan heta t.ex. `ospp-projekt-grupp-1` eller något liknande,
egentligen vad som helst. Varje i en git-repository kan vara i ett av
tre tillstånd:

1. Inte incheckad
2. Stage:ad
3. Committad

En fil (eller mer precis: en _ändring_ på en fil) rör sig från 1 till 3
i listan. Först _stage_:as ändringen, vilket innebär att tiden fryses
och filen sparas så som den såg ut. När alla ändringar som hör ihop är
stage:ade _committar_ man dem i klump, vilket betyder att man buntar
ihop dem tillsammans med ett meddelande om vad för ändringar som har
gjorts.

När en ändring väl committats sparas den för evigt i repositoryns
historia. Även om ändringarna (committen) skulle ångras och rullas
tillbaka går det att gå tillbaka till just den versionen av repositoryns
historia och se hur saker såg ut då. Detta är mycket användbart vid
t.ex. debugging, när man ska ta reda på hur en bugg introducerats. Det
är också mycket svårt att på riktigt råka ta bort något från en
Git-repository när det väl committats.

Från början är _alla_ filer inte incheckade. Det betyder att Git inte
bryr sig om ändringar som görs på filerna alls. Det första steget när
man skapar en ny fil i en git-repository är därför att lägga till och
stage:a den, så att Git vet att den finns.

Arbetsordningen med Git är alltså:

1. Redigera (eller skapa, ta bort, byt namn på) filer
2. Stage:a ändringarna för att frysa dem i tiden
3. Committa dem med ett meddelande som beskriver vad ändringarna gör

Git sparar alla ändringarna i en tidslinje som det går att spola framåt
och bakåt i. Tillståndet som en repository för tillfället står på kallas
för _HEAD_ (som i "läshuvud"). Men det går också att gå i sidled och ha
alternativa tidslinjer (precis som i science fiction). Det kallas för
_branches_ eftersom de grenar ut historiken i ett träd. Vi kommer att gå
igenom hur man kan använda branches för att samarbeta i en grupp med ett
kodprojekt senare. Egentligen görs i princip ingen skillnad mellan den
första grenen (som brukar kallas `master`) och andra branches -- det går
t.o.m. att ta bort `master` om man skulle vilja!

Det som gör Git användbart vid samarbete med andra är framför allt
möjligheten att synkronisera repositories med sina branches via servrar,
s.k. _remotes_. En remote sparar den senaste gemensamma versionen av
projektets historia så att alla kan hämta hem andras ändringar -- men
också skicka upp sina egna. Ett inbyggt låssystem ser till att det är
omöjligt att skicka upp sina ändringar utan att först ha hämtat de
senaste gemensamma ändringarna från remoten. På så sätt kan man
säkerställa att alla i projektet är överens om hur den gemensamma koden
ser ut, även om man arbetar oberoende av varandra.

Det går också att slå ihop branches till en gemensam tidslinje igen,
vilket kallas för en _merge_ (lämpligt nog). Det betyder att Git gör
sitt bästa för att passa ihop ändringarna som gjorts sedan den
gemensamma brytpunkten för två branches. Ofta kan detta göras automatiskt,
men ibland uppstår en konflikt och användaren måste hjälpa till. I
praktiken görs också en merge när kod hämtas från en remote. Det innebär
att om en gruppmedlem har hunnit göra ändringar som du inte har sett så
kommer Git att göra sitt bästa för att pussla ihop projektet ändå åt er
(och åtminstone varna om det inte går).


### En kort kom-igång-guide

Det normala arbetsflödet med git är helt kommandoradsbaserat och utgår
från programmet `git`. Många editorer har dock stöd för att interagera
med Git direkt.

#### Hämta kod med git clone

Man börjar använda git på ett av två sätt. Antingen hämtar man hem kod
som redan finns genom kommandot `git clone` ("clone" eftersom man
"klonar" en kopia av koden och dess historik till sin dator):

```sh
$ git clone https://github.com/rg3/youtube-dl
Cloning into 'youtube-dl'...
remote: Counting objects: 70370, done.
remote: Compressing objects: 100% (21/21), done.
remote: Total 70370 (delta 8), reused 0 (delta 0), pack-reused 70349
Receiving objects: 100% (70370/70370), 38.71 MiB | 3.28 MiB/s, done.
Resolving deltas: 100% (51112/51112), done.
Checking connectivity... done.
```

Här användes adressen till programmet `youtube-dl`:s källkod, men vilken
adress som helst fungerar. Om man inte anger en mapp efter adressen
kommer git att skapa en mapp där du står som heter samma sak som
repositoryn (oftast slutet på adressen), i det här fallet `youtube-dl`.

#### Visa historik med git log

Nu kan vi ställa oss i mappen som git skapade med `cd youtube-dl` som
vanligt och börja köra kommandon. Om man t.ex. kör `git log` får man en
historik över alla commits med nyast överst, liknande den här:

```
commit 1094074c045140e9a91b521b0a933f394a7bba91
Author: Remita Amine <remitamine@gmail.com>
Date:   Thu Aug 4 09:38:37 2016 +0100

    [kaltura] extract subtitles and reduce requests

commit 217d5ae0137943829db23d13eee425e5fd7c08ae
Author: Remita Amine <remitamine@gmail.com>
Date:   Thu Aug 4 09:37:27 2016 +0100

    [vodplatform] Add new extractor
```

Här kan vi alltså se två commits med sin unika nyckel
(`1094074c045140e9a91b521b0a933f394a7bba91`), vem som checkat in den,
när, och hur ändringarna beskrevs. Notera att båda ändringarna är
sammanhängande funktioner som lagts till programmet.

Avsluta med `q` och bläddra upp och ned med piltangenterna.

#### Jämföra ändringar med git diff

Om man vill veta vad som ändrades mellan de båda commitsen kan man
använda `git diff` och deras namn. Om man inte orkar kopiera hela deras
unika namn räcker det nästan alltid med de första tecknen i dem, så här:
`git diff 217d5a 1094074`.

{{< figure src="/images/git/git-diff.png" title="git diff mellan två commits" >}}


Här ser vi alltså rader som tagits bort (minus) och lagts till
(plus). På många system är också raderna färgade i rött och grönt som
ovan. Notera att ordningen på argumenten spelar roll, eftersom det är
skillnaden mellan att jämföra framåt och bakåt!

Avsluta igen med `q` och scrolla upp och ner med piltangenterna.

#### Starta en egen repository med git init

#### Lägg till filer med git add

#### Registrera ändringar med git stage och git commit

- git init
- git add
- git commit
- git stage
- git commit
- git diff

## GitHub

- registrera sig (student pack)
- forkar
- lägga till existerande repo
- git push
- git pull

## Hur man brukar arbeta med Git i grupp

- inga binärer i repon!
- fetaure branches
- merge-konflikter
- pull requests och synkronisering med master

## Git på IT-institutionens datorer

## Git på din egen dator

- installera med homebrew
- windows!??!
- plug-ins för vanliga editorer

## Vanliga uppgifter

- lägg till ny fil
- "vem sabbade min kod" -- git blame
- git log -- spåra ändringar
- hantera mergekonflikter
- spola tillbaka
- git reset --head
- git stash
- git ignore

## Avancerade funktioner att lära sig på egen hand

### Amend

### Patch

### Rebase

### Cherry-pick

### Travis och annan automatisering

- studentkonton och open source

## Läs mer

- Atalassians guide
- officiella guiden
- githubs manual
