+++
date = "2016-08-01T14:58:19+02:00"
menu = "matlab"
module = "matlab"
title = "Matlab"

lastmod = "2016-08-18T12:54:33+02:00"
+++
MATLAB är ett datorprogram och programspråk som är skapat av företaget MathWorks.
Programmet används framförallt till tekniska- och matematiska uträkningar och
nyttjas flitigt som ett verktyg i matematikundervisning på universitet och
högskolor.

**Det är rekommenderat att du startar MATLAB och testar de kommandon/exempel
som ges i texten samtidigt som du läser.**

## Innehåll

- [Vad kan du göra i MATLAB?](#vad-kan-du-göra-i-matlab)
- [Hur ser MATLAB ut?](#hur-ser-matlab-ut)
    + [Kommandofönstret](#kommandofönstret)
    + [Arbetsmapp](#arbetsmapp)
    + [Sökfältet / Sökväg till arbetsmappen](#sökfältet-sökväg-till-arbetsmappen)
    + [Filredigerare](#filredigerare)
    + [Variabelfönstret](#variabelfönstret)
- [Lathund i MATLAB](#lathund-i-matlab)
    + [Kommentarer](#kommentarer)
    + [Tal och listor](#tal-och-listor)
        - [Enkla tal](#enkla-tal)
        - [Listor](#listor)
    + [Dölja utskrift av variabler och uttryck](#dölja-utskrift-av-variabler-och-uttryck)
    + [Matematiska operationer/funktioner](#matematiska-operationer-funktioner)
        - [Enkla tal](#enkla-tal-1)
        - [Listor](#listor-1)
    + [Hjälp med funktioner/kommandon](#hjälp-med-funktioner-kommandon)
    + [Grafer](#grafer)
        - [Flera linjer i grafen](#flera-linjer-i-grafen)
        - [Flera grafer i ett rutnät](#flera-grafer-i-ett-rutnät)
    + [Skriva ut text i kommandofönstret](#skriva-ut-text-i-kommandofönstret)
    + [Rensa gamla variabler/historik](#rensa-gamla-variabler-historik)
- [Spara program](#spara-program)
- [`Överkurs` Symbolhantering i MATLAB](#överkurs-symbolhantering-i-matlab)
- [`Överkurs` Matriser & matrisekvationer](#överkurs-matriser-matrisekvationer)



## Vad kan du göra i MATLAB?
Du kan tänka på MATLAB som en avancerad grafräknare som kan programmeras att
göra det du vill, på ditt sätt. Till exempel är det väldigt lätt att rita upp
grafer och utföra beräkningar på stora ekvationssystem (till och med större än
det är möjligt att lösa för hand). Ett kortare urval av enklare saker MATLAB
kan användas till är:

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
Kommentarer i MATLAB föregås av `%`. Kommentarer är ett bra sätt att notera vad
olika delar av kod betyder/gör och underlättar när man senare försöker förstå
sin kod.
``` matlab
% Detta är en kommentar i MATLAB
```

### Tal och listor
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

`Tips!` Det finns ett enkelt sätt att skapa listor utan att behöva skriva varje
tal för hand:

``` matlab
% Skapa en lista med talen [1, 2, 3, 4, 5]
E = [1:1:5]
% Skapa en lista med talen [1, 3, 5, 7, 9]
F = [1:2:10]
```

Denna typ av listor kan även kallas **radvektor**, då alla värden står på en rad.
I MATLAB kan man även skapa listor som kallas **kolumnvektor**, där alla värden
står i en kolumn. Detta används dock främst vid *matrisberäkningar*, och är lite
överkurs:

``` matlab
% Kolumnvektor, separera tal med ;
G = [1; 2; 3; 4]
```

**Testa själv i kommandofönstret för att se skillnaden.**

### Dölja utskrift av variabler och uttryck
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
För att kunna utföra beräkningar behövs matematiska operationer/funktioner. Hur
vissa av dessa fungerar skiljer sig lite om man vill utföra beräkningar på enkla
tal eller listor.

#### Enkla tal

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

#### Listor
För att snabbt utföra många beräkningar kan man använda listor. Många av
exemplen från *enkla tal* går använa på samma sätt när det gäller listor,
men i vissa fall måste en punkt (`.`) skrivas ut före den matematiska
operanden (se kvadrering i exemplet nedan). Detta är då MATLAB arbetar
med s.k. matrisberäkningar och i vissa fall förväntar sig två matriser
och inte enkla tal.

``` matlab
% Vi börjar med att skapa en lista, a
a = [1, 2, 3];

% Addition
b = a + 10  % blir [11, 12, 13]
c = a + b   % blir [1+11, 2+12, 3+13] = [12, 14, 16]

% Subtraktion
d = c - 8   % blir [4, 6, 8]
e = d - a   % blir [4-1, 6-2, 8-3] = [3, 4, 5]

% Multiplikation - Notera .* för g
f = a * 2   % blir [2, 4, 6]
g = a .* a   % blir [1*1, 2*2, 3*3] = [1, 4, 9]

% Division - Notera ./ för i
h = g / 2   % blir [0.5000, 2.0000, 4.5000]
i = a ./ a   % blir [1/1, 2/2, 3/3] = [1.000, 1.000, 1.0000]

% Kvadrering - Notera .^ för både j och k
j = a .^ 2   % blir [1, 4, 9]
k = a .^ a   % blir [1^1, 2^2, 3^3]  = [1, 4, 27]
```

Vissa operationer/funktioner har inte kort notation som de ovan. Exempel på
detta är kvadratroten, vilken anropas genom sitt funktionsnamn `sqrt`:

``` matlab
% Vi börjar med att skapa en lista, a
a = [4, 16, 36];

b = sqrt(a)   % blir [2, 4, 6]
```

### Hjälp med funktioner/kommandon
Det är inte lätt att komma ihåg hur alla funktioner skall skrivas in. Som tur är
finns ett hjälpsystem i MATLAB för just sådana tillfällen. För att ta reda på
mer om hur en funktion skall skrivas- och fungerar kan du använda
`help`-kommandot. Skriv helt enkelt `help <funktionsnamn>` i kommandofönstret.
**Ex. för funktionen sqrt**:

``` matlab
help sqrt
```

vilket ger utskriften:

{{< figure src="/images/matlab/help_sqrt.png" class="small" >}}

### Grafer
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

#### Flera linjer i grafen
Det går även ha flera grafer i samma fönster. För att göra detta
använder vi `hold`-kommandot. Vi skapar två grafer, en linjär och
den kvadratiska från ovan:

``` matlab
x = [1 2 3 4 5]
y1 = [1 2 3 4 5]
y2 = [1 4 9 16 25]

% Sätt hold till ON för att spara
% alla grafer vi ritar ut
hold on

% Rita  grafen för y1 (linjär)
plot(x,y1)

% Rita grafen för y2 (kvadratisk)
plot(x,y2)

% Sätt titel på grafen
title('Två linjer i en graf')

% Sätt namn på x- och y-axel
xlabel('x-axel')
ylabel('y-axel')

% Stäng av hold när vi är klara
hold off
```

{{< figure src="/images/matlab/dual_line_plot.png" title="Graf över två funktioner" >}}

#### Flera grafer i ett rutnät
Utöver detta går det även placera flera grafer bredvid varandra i ett rutnät. För detta
använder vi kommandot `subplot`. Subplot fungerar så att den tar in hur många rader och
kolumner du vill använda samt positionen för nästkommande graf.

``` matlab
x = [1 2 3 4 5]
y1 = [1 2 3 4 5]
y2 = [1 4 9 16 25]

% En rad, två kolumner. Nästa graf på första platsen:
subplot(1,2,1)
plot(x,y1, 'g') % Rita grafen på plats 1 och gör linjen grön
title('Första grafen') % Titel på första grafen

% En rad, två kolumner. Nästa graf på andra platsen:
subplot(1,2,2)
plot(x,y2, 'r') % Rita grafen på plats 2 och gör linjen röd
title('Andra grafen') % Titel på andra grafen

% Sätt namn på x- och y-axel för andra grafen
xlabel('x-axel')
ylabel('y-axel')
```

{{< figure src="/images/matlab/subplot.png" title="Flera grafer med olika konfiguration" >}}

### Skriva ut text i kommandofönstret
För att skriva ut text i kommandofönstret används funktionen `disp`. Notera att text
som skall skrivas ut måste omslutas av `'`-tecken:

``` matlab
disp('Hallå från kommandofönstret!') % Skriver ut texten till kommandofönstret
```

### Rensa gamla variabler/historik
Ibland kan man behöva rensa gamla variabler från minnet. Detta kan du göra via kommandot
`clear`. För att rensa all historik skriver du:
``` matlab
clear all
```

För att rensa enskilda/specifika variabler skriver du variabelnamnet istället för *all*.
Du kan även rensa flera variabler på samma gång:
``` matlab
% Vi skapar några variabler först
a = 1
b = 2
c = 3

% Sedan rensar vi a och c från minnet, men sparar b
clear a c
```


## Spara program
Eftersom det är jobbigt att behöva skriva alla kommandon varje gång är det bra att kunna
spara dem i en fil som ett MATLAB-program. Det är även bra om man har kod som fungerar
bra och man vill spara för framtiden.

Börja med att skapa en ny fil genom att klicka på *New Script* längst till vänster i
menyraden. Detta öppnar en tom fil i tilredigeraren. Kopiera sedan koden nedan och
klistra in i filen:

``` matlab
x = 2016;
y = 1953; %  Ändra till året du föddes

disp('Hej, jag heter Tintin!') % Ändra Tintin till dit namn
disp('Min ålder är: ')
disp(x-y)
```

Justera enligt kommentarer. Tryck därefter på diskett-ikonen (*save*) i menyraden och spara
filen som **test.m** i din arbetsmapp (den är förvald som destination). Filen kommer nu
synas i arbetsmapp-fönstret i MATLAB.

Skriv nu namnet på filen (`test`) i kommandofönstret för att köra ditt program!

{{< figure src="/images/matlab/savefile.gif" title="Spara en programfil i MATLAB" >}}

## `Överkurs` Symbolhantering i MATLAB
Matlab kan även hantera s.k. symbolisk matematik. Det vill säga matematiska
uttryck- och ekvationer som innehåller symboler och ej resulterar i en
numerisk lösning. Via symbolhanteringen i MATLAB kan man exempelvis
beräkna derivatan av en funktion som en formel.

### Exempel
Låt oss ta en enkel ekvation, $F(x) = 5x^2 - 2x$, och utnyttja MATLAB:s
symbolhantering för att hitta dess derivata:

``` matlab
% Först säger vi att vi vill använda
% x för symbolisk matematik
syms x

% Sedan sparar vi funktionen vi vill
% derivera i en variabel, F
F = 5*(x^2) - 2*x;

% Därefter använder vi matlabs symbolhantering
% för att derivera funktionen:

diff(F,x) % Derivatan av funktionen F med avseende på x

```

{{< figure src="/images/matlab/symbolics.gif" title="Symbolisk derivata i matlab" >}}

Om du är intresserad att lära dig mer om MATLAB:s symboliska hantering kallas den för
*MATLAB Symbolic Math Toolbox* och mer information om denna, med exempelfiler, finns
här: http://se.mathworks.com/help/symbolic/index.html

## `Överkurs` Matriser & matrisekvationer
Matriser och matrisoperationer är något de flesta av er aldrig stött på tidigare och är inget
vi kommer fokusera på i den här kursen. Eftersom det är en av programmets huvudklasser, samt
kommer att vara en stor och viktig del i kommande matematikkurser på universitetet kommer
här förenklad genomgång av matriser:

### Exempel 1
En matris kan tolkas som en lista med koefficienter i linjära ekvationssystem. Tag till exempel:

$$2x\_1+3x\_2-4x\_3$$

vilket på matrisform skulle se ut såhär:

$$\begin{bmatrix}2 & 3 & -4 \end{bmatrix} \begin{bmatrix}x\_1 \\\ x\_2 \\\ x\_3 \end{bmatrix}$$

### Exempel 2
Det finns även större matriser som beskriver hela ekvationssystem:

$$2x\_1+3x\_2 = 10$$
$$4x\_1+5x\_2 = 12$$
$$\begin{bmatrix}2 & 3 \\\ 4 & 5 \end{bmatrix} \begin{bmatrix}x\_1 \\\ x\_2 \end{bmatrix} = \begin{bmatrix}10 \\\ 12 \end{bmatrix}$$

MATLAB är ett utmärkt verktyg för att lösa ekvationer av denna typ. Om du vill lära dig mer och förberada dig inför kommande kurser kan du kika lite på
http://sv.wikipedia.org/wiki/Matris.
