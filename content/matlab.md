+++
date = "2016-08-01T14:58:19+02:00"
menu = "matlab"
module = "matlab"
title = "Matlab"

+++

MATLAB är ett datorprogram och programspråk som är skapat av företaget MathWorks. Programmet används framförallt för att göra tekniska och matematiska uträkningar och nyttjas flitigt som ett verktyg i matematikundervisning på universitet och högskolor.

## Vad kan du göra i MATLAB?
Utföra beräkningar
Läsa eller spara till en fil
Skapa bilder, grafik och diagram
Skapa grafiska användargränssnitt
Programmet MATLAB har en del inbyggda kommandon och funktioner.
Dessa delas in i tre huvudklasser:

| Klass             | Exempel                           | Beskrivning                                                 |
| ----------------- | --------------------------------- |------------------------------------------------------------ |
| Matrisoperationer | `[V,D] = eig(X)`                  | Hittar egenvärden till matrisen.                            |
| Grafik            | `plot(x,y)`                       | Ritar upp en graf av `y` mot `x`.                           |
| Data              | 'save filnamn' och `load filnamn` | *sparar* resp. *läser in* alla variabler i filen *filnamn*. |

## Hur MATLAB kan användas
**_Överkurs, du behöver inte förstå alla steg._**

Matriser och matrisoperationer är något de flesta av er aldrig stött på tidigare och är inget vi kommer fokusera på i den här kursen. Eftersom det ar en av programmets huvudklasser samt kommer att vara en stor och viktig del i kommande matematikkurser på universitetet så kommer här förenklad matris-förklaring:

### Exempel 1
En matris kan tolkas som en lista med koefficienter i linjara ekvationssystem.

$$2x\_1+3x\_2-4x\_3$$

Det översta uttrycket, med tre olika obekanta x, skrivs på matrisform:

$$\begin{bmatrix}2 & 3 & -4 \end{bmatrix} \begin{bmatrix}x\_1 \\\ x\_2 \\\ x\_3 \end{bmatrix}$$

### Exempel 2
Det finns även större matriser som beskriver hela ekvationssystem.

$$2x\_1+3x\_2 = 10$$
$$4x\_1+5x\_2 = 12$$
$$\begin{bmatrix}2 & 3 \\\ 4 & 5 \end{bmatrix} \begin{bmatrix}x\_1 \\\ x\_2 \end{bmatrix} = \begin{bmatrix}10 \\\ 12 \end{bmatrix}$$

MATLAB är ett utmärkt verktyg för att lösa sådana ekvationer men i den här kursen räcker det med att ni ser matriser som en lista med koefficienter. Blev ni däremot nyfikna och vill förbereda er ännu mer för kommande kurser kan ni kika lite på http://sv.wikipedia.org/wiki/Matris.


## Lathund i MATLAB
### Kommentarer
Kommentarer i MATLAB föregås av `%`.
``` matlab
% Detta är en kommentar i MATLAB
```

### Tal och listor

Spara ett tal i en variabel:
``` matlab
A = 42
```
Spara ett tal i listor:

*Radvektor*
``` matlab
B = [1, 2, 3, 4]
% eller
C = [1 2 3 4]
```

*Kolumnvektor*
``` matlab
D = [1; 2; 3; 4]
```

### Grafer
För att rita upp en enkel graf i MATLAB används funktionen `plot`. Denna tar som
minst två listor, `x`-axel samt `y`-axel:
``` matlab
plot(x,y)
```

Vanligast är att `y` innehåller de värden man vill rita upp samt att `x`
innehåller korresponderande punkt på `x`-axeln. Exemplet nedan ritar upp en
förenklad graf över funktionen $y = x^2$:
``` matlab
x = [1 2 3 4 5]
y = [1 4 9 16 25]

plot(x,y)
```
vilket resulterar i följande graf:
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

## Symbolhantering i MATLAB
