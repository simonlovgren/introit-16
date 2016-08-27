+++
date = "2016-08-01T14:58:19+02:00"
menu = "matlab"
module = "matlab"
title = "Matlab/Uppgifter"

lastmod = "2016-08-25T13:52:12+02:00"
+++


## Innehåll

 
+ [Mål](#mål)
+ [Detta behöver du](#detta-behöver-du)
+ [Uppgift](#uppgift)
	+ [Del 1: Skapa ett nytt MATLAB-script/program](#del-1-skapa-ett-nytt-matlab-script-program)
	+ [Del 2: Generera listor med tal](#del-2-generera-listor-med-tal)
	+ [Del 3: Matematiska operationer på listor](#del-3-matematiska-operationer-på-listor)
	+ [Del 4: Använda enklare funktioner](#del-4-använda-enklare-funktioner)
	+ [Del 5: Visa resultatet i form av grafer](#del-5-visa-resultatet-i-form-av-grafer)
	+ [Slutgiltigt program](#slutgiltigt-program)
+ [Inlämning](#inlämning)

## Mål
Efter att du blivit godkänd på denna uppgift kommer du att känna till hur du:

- sparar ett MATLAB-program till fil och kör det
- genererar listor av tal
- använder enklare ekvationer/matematiska operationer
- använder enklare funktioner för att skapa nya värdelistor
- visar resultat av funktioner i form av grafer.


## Detta behöver du

För att genomföra uppgiften behöver du tillgång till följande program:

+ MATLAB
  + Finns installerat på PC-datorerna i salarna på Polacksbacken och Ångström.

Inlämning sker via Studentportalen. För detta krävs ett studentkonto.


## Uppgift

Materialet som tas upp i uppgiften diskuteras på [infosidorna för MATLAB](../)

### Del 1: Skapa ett nytt MATLAB-script/program
Börja med att skapa ett nytt MATLAB-program. Klistra in följande kod:

``` matlab
disp('Jag fungerar!')
```

Spara sedan programmet till skrivbordet och döp filen till `abcd1234-matlab.m`,
där du ersätter `abcd1234` med användarnamnet för ditt studentkonto.

Byt sedan nuvarande arbetsmapp till skrivbordet, annars kan du inte köra ditt
sparade program. Detta gör du lättast via [Sökfältet / Sökväg till arbetsmappen](../#sökfältet-sökväg-till-arbetsmappen).

Testa nu att köra programmet genom att skriva `abcd1234-matlab`, där du såklart
byter `abcd1234` med användarnamnet för ditt studentkonto, i kommandofönstret.
Om programmet skriver ut `Jag fungerar!` i kommandofönstret kan du gå vidare
till nästa del. Får du inte utskriften, kontrollera att:

- du har valt rätt arbetsmapp i [sökfältet](../#sökfältet-sökväg-till-arbetsmappen)
- programmet du sparat syns i [arbetsmapp-fönstret](../#arbetsmapp)
- programfilen inte är tom.

### Del 2: Generera listor med tal
För denna uppgift vill vi ha en lista med tal vi kan utgå från. Då det är jobbigt att skriva alla dessa för hand vill vi använda snabbversionen för att skapa en lista av många tal. Se sektionen [Tal och Listor / Listor](../#listor) i informationsmaterialet.

Vi vill ha en lista `x1` som börjar på **0** och slutar på **360** som skall representera antal grader. Varje tal i listan skall **öka med 20**. Dvs. listan skall se ut på följande sätt när den är klar: `x1 = [0, 20, 40, 60, ..., 340, 360]`.


### Del 3: Matematiska operationer på listor
För att vi skall kunna använda dessa tal på det sätt vi vill måste vi först omvandla våra gradtal i listan `x1` till radeaner och spara denna i en ny lista, kallad `x2`. Detta gör vi via denna formel:

$$x_2 = \frac{x_1}{360}\cdot2\cdot\pi$$

Skriv detta som en del i ditt program och testa att du får rätt tal. **Variabeln $\pi$ finns inbyggd i MATLAB och heter `pi`.**

Om du skrivit rätt kommer talen i den nya listan se ut såhär:  
`x2 = [0, 0.3491, 0.6981, ..., 5.9341, 6.2832]`

### Del 4: Använda enklare funktioner
Nu vill vi skapa tre uppsättningar data för våra värden i `x2`. För detta
använder vi funktionen `sin` (sinus). I nästa steg kommer vi rita grafer för dessa
tre uppsättningar. 

För att vi skall se skillnad på de tre dataserierna kommer vi förskjuta
graferna. Lägg till detta i ditt program för att skapa de tre uppsättningarna
värden vi kommer använda i nästa steg.

``` matlab
y1 = sin(x2);
y2 = sin(2*x2);
y3 = sin(3*x2);
```

### Del 5: Visa resultatet i form av grafer
Vi skall nu rita ut våra värden i form av grafer. Information om hur detta fungerar
hittar du under sektionen [grafer](../#grafer) på infosidan. I sin enklaste form kan man rita upp dem
såhär:

``` matlab
plot(x2,y1 , x2,y2 , x2,y3)
```
och då får vi denna graf:

{{< figure src="/images/matlab/uppgift-plot.png" class="medium" title="Grundläggande graf" >}}

**Din uppgift är nu att byta ut denna `plot` så att grafen som skapas ser ut såhär:**

{{< figure src="/images/matlab/uppgift-plot-final.png" class="medium" title="Färdig graf" >}}

### Slutgiltigt program

När du är klar med programmet skall man kunna köra det från MATLAB:s kommandofönster
och den färdiga grafen skall då visas.

## Inlämning

Se till att den slutgiltiga filen heter `abcd1234-matlab.m`, där du ersätter
`abcd1234` med  användarnamnet för ditt studentkonto.

Ladda upp filen i Studentportalen.
