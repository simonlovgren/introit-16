+++
date = "2016-08-01T14:58:19+02:00"
menu = "matlab"
module = "matlab"
title = "Matlab"

+++

MATLAB är ett datorprogram och programspråk som är skapat av företaget MathWorks.
Programmet används framförallt till tekniska- och matematiska uträkningar och
nyttjas flitigt som ett verktyg i matematikundervisning på universitet och
högskolor.

**Det är rekommenderat att du startar MATLAB och testar de kommandon/exempel
som ges i texten samtidigt som du läser.**

## Vad kan du göra i MATLAB?

- Utföra beräkningar
- Läsa eller spara till en fil
- Skapa bilder, grafik och diagram
- Skapa grafiska användargränssnitt
- Programmet MATLAB har en del inbyggda kommandon och funktioner.

Dessa delas in i tre huvudklasser:

| Klass             | Exempel                           | Beskrivning                                                 |
| ----------------- | --------------------------------- |------------------------------------------------------------ |
| Matrisoperationer | `[V,D] = eig(X)`                  | Hittar egenvärden till matrisen.                            |
| Grafik            | `plot(x,y)`                       | Ritar upp en graf av `y` mot `x`.                           |
| Data              | 'save filnamn' och `load filnamn` | *sparar* resp. *läser in* alla variabler i filen *filnamn*. |

## Hur ser MATLAB ut?
MATLAB har ett antal olika sektione dedikerade till olika uppgifter. De främst
förekommande beskrivs nedan och vardera sektion som omnämns finns utmarkerad i
bilden nedan.

{{< figure src="/images/matlab/program.png" title="Interface i MATLAB" >}}

### Kommandofönstret
Kommandofönstret används för att starta MATLAB-program, men kan även användas
för att direkt utföra beräkningar eller exekvera uttryck. Kommandon eller
uttryck som skrivs i kommandofönstret körs direkt du trycker `ENTER`.

Låt säga att du skrivit ett program som du sparat till filen
**decorated_plot.m** i den nuvarande arbetsmappen. För att köra programmet
skriver du helt enkelt `decorated_plot` i kommandofönstret och trycker `ENTER`.

### Arbetsmapp
Nuvarande arbetsmappen är den mapp som MATLAB letar efter program i. Om du har
skrivit ett program och sparat det i en fil, måste filen ligga i arbetsmappen
för att MATLAB skall hitta ditt program. Arbetsmappen går ändra om man t.ex.
lagt program i andra mappar.

### Sökfältet / Sökväg till arbetsmappen
Detta är ett kombinerat sökfält och sökväg till arbetsmappen. Du kan dels
navigera till andra mappar, dels söka efter filer via detta fält. För att
navigera i mappstrukturen, använd de **små pilarna bredvid mappnamnen**, eller
klicka i den **tomma ytan bredvid sökvägen** för att manuellt skriva in en
sökväg.

För att söka efter filer, klicka på **knappen med förstorningsglaset** längst
till höger i detta fält.

Det finns även sökvägshistorik om du klickar på den **lilla pilen till vänster
om förstorningsglaset**.

### Filredigerare
Eftersom det blir jobbigt att alltid skriva varje kommando finns det en inbyggd
filredigerare i MATLAB. Med hjälp av denna kan du skriva program (*script*),
vilka du sedan kan köra genom att anropa dem via kommandofönstret (så länge de
finns i den nuvarande arbetsmappen). Filredigeraren har bl.a. färgschema för
MATLAB-kod, vilket gör det lättare att skriva program.

Ett program i MATLAB består, i sin enklaste form, av en uppsättning kommandon.
Tänk på det som att skriva en lista över kommandon, i korrekt ordning, du annars
skulle skriva i kommandofönstret. *Mer om detta beskrivs senare*.

### Variabelfönstret
Variabelfönstret visar alla de variabler, och deras innehåll, som för närvarande
finns tillgängliga. Detta är bra om man inte vet vad man redan har skapat för
variabler, eller för att se hur ett program beter sig.

## Lathund i MATLAB
I denna sektion beskrivs grundläggande kommandon/funktioner i MATLAB. **Testa
gärna dessa kommandon i kommandofönstret samtidigt som du läser.**

### Kommentarer
***
Kommentarer i MATLAB föregås av `%`. Kommentarer är ett bra sätt att notera vad
olika delar av kod betyder/gör och underlättar när man senare försöker förstå
sin kod.
``` matlab
% Detta är en kommentar i MATLAB
```

### Tal och listor
***
Tal, listor och annan data sparas i så kallade *variabler*. Att använda
variabler istället för statiska värden gör att man lätt kan ändra vad det är
man räknar på.

#### Enkla tal
Enkla tal kan bestå av heltal eller flyttal. Såhär sparar du ett tal i en
variabel:

``` matlab
% Heltal
A = 42
% flyttal
B = 1.234
```
#### listor
En **lista** är helt enkelt en uppsättning av flera tal. Dessa listor kan även
refereras till som **vektor** eller **array**. För att spara tal i en lista kan
du skriva på två olika sätt:

``` matlab
% Med kommatecken
C = [1, 2, 3, 4]
% Utan kommatecken
D = [1 2 3 4]
```

Denna typ av lista kan även kallas **radvektor**, då alla värden står på en rad.
I MATLAB kan man även skapa listor som kallas **kolumnvektor**, där alla värden
står i en kolumn. Detta används dock främst vid *matrisberäkningar*, och är lite
överkurs:

``` matlab
% Kolumnvektor, separera tal med ;
E = [1; 2; 3; 4]
```

**Testa själv i kommandofönstret för att se skillnaden.**

### Dölja utskrift av variabler (m.m.)
***
Som du kanske märkt (om du testat kommandona själv) skrivs resultatet ut varje
gång ett kommando, eller uttryck, körts. Detta går "stänga av" genom att avsluta
uttrycket/kommandot med ett `;`-tecken. **Testa exempelvis följande:**

``` matlab
% Med utskrift
A = 42
% Utan utskrift
B = 42;
```

### Matematiska operationer/funktioner
***
För att kunna utföra beräkningar behövs matematiska operationer/funktioner. Hur
dessa fungerar skiljer sig lite om man vill utföra beräkningar på enkla tal
eller listor.

#### Enkla tal
För enkla tal

``` matlab
% Vi börjar med att skapa en variabel, a
a = 8;

% Addition
b = a + 10  % blir 18
c = a + b   % blir 8 + 18 = 26

% Subtraktion
d = c - 8   % blir 18
e = d - a   % blir 18 - 8 = 10

% Multiplikation
f = a * 2   % blir 16
g = a * a   % blir 8 * 8 = 64

% Division
h = g / 2   % blir 32
i = h / a   % blir 32 / 8 = 4

% Kvadrering
j = a ^ 2   % blir 64
k = a ^ a   % blir 8 ^ 8 = 16777216
```

Vissa operationer/funktioner har inte kort notation som de ovan. Exempel på
detta är kvadratroten, vilken anropas genom sitt funktionsnamn `sqrt`:

``` matlab
% Vi börjar med att skapa en variabel, a
a = 64;

b = sqrt(100) % blir 10
c = sqrt(a)   % blir 8
```

### Hjälp med funktioner
***
Det är inte lätt att komma ihåg hur alla funktioner skall skrivas in. Som tur är
finns ett hjälpsystem i MATLAB för just sådana tillfällen. För att ta reda på
mer om hur en funktion skall skrivas- och fungerar kan du använda
`help`-kommandot. Skriv helt enkelt `help <funktionsnamn>` i kommandofönstret.
**Ex. för funktionen sqrt**:

``` matlab
help sqrt
```

vilket ger utskriften:

``` matlab
 sqrt   Square root.
     sqrt(X) is the square root of the elements of X. Complex 
     results are produced if X is not positive.

     See also sqrtm, realsqrt, hypot.

     Reference page for sqrt
     Other functions named sqrt
```

### Grafer
***
MATLAB gör det väldigt enkelt att snabbt rita upp en graf över en uppsättning
tal. För att rita upp en enkel graf i MATLAB används den inbyggda *funktionen*
`plot`:

``` matlab
plot(x,y)
```
Där `x` samt `y` är listor med värden för **x-** och **y-axeln**.

Vanligast är att `y` innehåller de värden man vill rita upp samt att `x`
innehåller korresponderande punkt på **x-axeln**. Exemplet nedan ritar upp en
förenklad graf över funktionen $y = x^2$, där vi redan räknat ut `y` för givna
`x`:

``` matlab
% Position på x-axeln
x = [1 2 3 4 5]
% Värden på y-axeln
y = [1 4 9 16 25]

% Rita ut graf för x/y-värden
plot(x,y)
```
Detta resulterar i följande graf:

{{< figure src="/images/matlab/x2plot.png" title="Förenklad graf över $y=x^2$" >}}

Det går även ändra hur grafen skall se ut, lägga till titel och axel-etiketter:

``` matlab
x = [1 2 3 4 5]
y = [1 4 9 16 25]

% Rita samma graf, men med röd linje
plot(x,y,'r')

% Sätt titel på grafen
title('Graf över x^2')

% Sätt namn på x- och y-axel
xlabel('x-axel')
ylabel('y-axel')
```

{{< figure src="/images/matlab/x2plot_decorated.png" title="Dekorerad graf över $y=x^2$" >}}

## Spara program

## `Överkurs` Hur MATLAB kan användas
Matriser och matrisoperationer är något de flesta av er aldrig stött på tidigare och är inget vi kommer fokusera på i den här kursen. Eftersom det ar en av programmets huvudklasser samt kommer att vara en stor och viktig del i kommande matematikkurser på universitetet så kommer här förenklad matris-förklaring:

### Exempel 1
En matris kan tolkas som en lista med koefficienter i linjara ekvationssystem.

$$2x\_1+3x\_2-4x\_3$$

Det översta uttrycket, med tre olika obekanta x, skrivs på matrisform:

$$\begin{bmatrix}2 & 3 & -4 \end{bmatrix} \begin{bmatrix}x\_1 \\\ x\_2 \\\ x\_3 \end{bmatrix}$$

### Exempel 2
Det finns även större matriser som beskriver hela ekvationssystem.

$$2x\_1+3x\_2 = 10$$
$$4x\_1+5x\_2 = 12$$
$$\begin{bmatrix}2 & 3 \\\ 4 & 5 \end{bmatrix} \begin{bmatrix}x\_1 \\\ x\_2 \end{bmatrix} = \begin{bmatrix}10 \\\ 12 \end{bmatrix}$$

MATLAB är ett utmärkt verktyg för att lösa sådana ekvationer men i den här kursen räcker det med att ni ser matriser som en lista med koefficienter. Blev ni däremot nyfikna och vill förbereda er ännu mer för kommande kurser kan ni kika lite på http://sv.wikipedia.org/wiki/Matris.

## `Överkurs` Symbolhantering i MATLAB
