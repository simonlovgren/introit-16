+++
date = "2016-08-04T11:46:27+02:00"
menu = "editorer"
module = "editorer"
title = "Editorer"

+++


Det finns många sätt att spara text digitalt.

När du skriver dokument i en vanlig ordbehandlare, som Microsoft Word och liknande, sparas stora mängder metadata om färg, typsnitt, med mera.
Den typen av data är dock helt irrelevant för kod. Därför är det viktigt att du använder ett program som hanterar och sparar det du skriver på rätt sätt.

*Eftersom det pågår [stora konflikter](https://en.wikipedia.org/wiki/Editor_war) mellan användare av olika editorer, har vi
gjort en kompromiss och reducerat mindre civila kommentarer till fotnoter.*
[^footnote-sample]

# Innehåll

+ [Fördelar med en editor](#fördelar-med-en-editor)
+ [Textbaserade editorer](#textbaserade-editorer)
	- [Vim](#vim)
	- [Emacs](#emacs)
	- [Övriga](#övriga)
+  [Grafiska textredigerare](#grafiska-textredigerare)
	- [Atom](#atom)
	- [Sublime](#sublime)
	- [Notepad++](#notepad)
	- [Valfri DE-editor](#valfri-de-editor)
+ [IDE](#ide)
	- [Microsoft Visual Studio](#microsoft-visual-studio)
	- [Apple Xcode](#apple-xcode)
	- [Android Studio](#android-studio)
	- [Eclipse](#eclipse)
	- [IntelliJ IDEA](#intellij-idea)
	- [Egen editor i IDE](#egen-editor-i-ide)


## Fördelar med en editor

En editor är helt enkelt en textredigerare, anpassad för att skriva kod.

Det finns många olika att välja mellan, med olika för- och nackdelar.
Om du exempelvis använder en *IDE*, som *Visual Studio*[^visual-studio] eller *Eclipse*[^eclipse], brukar en sådan ingå.
Du kan även installera en dedikerad editor, som antingen kan vara textbaserad eller gjord för ett grafiskt gränssnitt.



## Textbaserade editorer

Textbaserade editorer brukar gå att använda i terminalen eller som ett dedikerat program.

Fördelen med detta är främst kompatibilitet. Du kommer kunna använda dig av gränssnittet oavsett om du konfigurerar en server på andra sidan jorden, eller om du tar anteckningar i LaTeX under en föreläsning.

Textbaserade program tenderar också att vara mycket mer stabila, eftersom de är oberoende av de processer och bibliotek som krävs för att rendera grafiska gränssnitt.

Många av dessa har även ålder på sin sida. Emacs lanserades redan på 70-talet och har därmed flera decennier av granskning, optimering, support och plugins.
Även Vim har funnits sedan 1991 (och är därmed troligen äldre än de flesta som läser denna sida).


### Vim

[Vim](http://www.vim.org/) är en *modal* editor baserad på Vi, som ingår i de flesta UNIX-system.

Detta innebär att gränssnittet har olika lägen anpassade för att göra olika saker:

+ *Normal mode* används för att traversera och redigera text
+ *Insert mode* används för att skriva in text
+ *Visual mode* används för att markera text

Varje läge är anpassat för sitt specifika syfte, vilket gör dem mer effektiva
och ergonomiska att använda.
För att exempelvis spela in ett makro skriver du helt enkelt `q` följt av en
bokstav/siffra som blir dess *register*. Det kan då repeteras $n$ gånger genom att skriva antal, följt av `@` samt registret. Fingrarna stannar kvar på tangentbordet hela vägen och du gör en bråkdel av arbetet.

*Känslan* av att använda en modal editor motsvarar ungefär den mellan att spela
melodier gentemot ackord. Istället för att trycka på flera tangenter
samtidigt gör du det sekventiellt. Därmed besparar du dig känslan av att skriva
`<Ctrl>+<Alt>+<Shift>+T` med en hand.

{{< figure src="/images/editorer/vim-sample.gif" title="Vim kan göra roliga saker" >}}

Vidare är Vim den mest resurssnåla textredigeraren. Oavsett hur bra dator du
har kommer det alltså fungera bra.

Om du använder Vim rekommenderas *starkt* att du konfigurerar om Caps Lock så
att den byter plats med Escape.

Vim erbjuder dessutom en stor mängd plugins som ändrar allt från färgschema
till kodkomplettering.

**Nackdelen** med Vim är att det är svårt att lära sig. Modala gränssnitt är
ännu ovanliga och tar ett tag att bli van vid.[^vim-difficulty]

### Emacs

[Emacs](https://www.gnu.org/software/emacs/) är på många sätt den **största**
textredigeraren.[^emacs-toolset]

Genom att använda kortkommandon har Emacs stöd för ett stort antal funktioner.
Exempelvis kan du trycka `<Ctrl>+<Alt>+S` för att göra en sökning med reguljära
uttryck i texten. 

Emacs använder Lisp, vilket gör det mycket enkelt att skriva egna plugins.
Resultatet är ett enormt bibliotek av funktioner, som bland annat inkluderar
mp3-spelare, webbläsare, mailklienter och vidare.[^emacs-os]

Om du är intresserad av att använda Emacs med Vim-liknande gränssnitt, kan du
skaffa [Spacemacs](http://spacemacs.org/).

Emacs-användare rekommenderas *starkt* att konfigurera om Caps Lock så att den
byter plats med Ctrl.[^emacs-pedal]

{{< figure src="/images/editorer/emacs.gif" title="Emacs kan också göra roliga saker" >}}


### Övriga

Det finns en uppsjö av olika editorer, många av vilka är inkluderade
i UNIX-system. Den enklaste av dessa är troligen *nano*, medan *vi* följer
ungefär samma syntax som Vim. Du kan även använda lite tokigare alternativ som
*ed*. Nackdelarna med dessa är att de ofta saknar många funktioner som
förenklar att skriva och *läsa* kod.[^real-programmers]

##  Grafiska textredigerare

Det finns även grafiska textredigerare för den moderna människan. Dessa är på
många sätt enklare att komma igång med.[^wimps] I och med att de oftast är
byggda för att vara lätta att använda försvinner många av möjligheterna att
skräddarsy editorn till smak och tycke.

### Atom

[Atom](https://atom.io/)[^atom] är open-source och därmed gratis och modifierarbar.
Den fungerar även på de flesta operativsystem och har stöd för många plugins
och smarta funktioner.

{{< figure src="/images/editorer/atom_custom.png" title="Atom med PlatformIO installerat" >}}

### Sublime

[Sublime](https://www.sublimetext.com/) har blivit populär på senare tid.[^sublime]

Den har ett antal funktioner som är hjälpsamma för programmerare och är gratis
att testa, men kräver en kostnad för att använda under längre tid.

{{< figure src="/images/editorer/sublime.png" title="Sublime Text 3" >}}

### Notepad++

[Notepad++](https://notepad-plus-plus.org/) är en enkel textredigerare som är
i grunden gjord för Windows.[^notepad]

{{< figure src="/images/editorer/nppp_dark.png" title="Notepad++" >}}

### Valfri DE-editor

De flesta *Desktop Environments* för Linux (som Gnome, KDE, Pantheon)
inkluderar någon variant av en editor, som exempelvis Gedit för Gnome.

Dessa är -- på de flesta sätt -- kompetenta, även om de saknar många av de mer
avancerade funktioner som ingår i andra editorer.


## IDE

En IDE (*integrated development environment*) är oftast en hel svit av program
som gör det enkelt att komma igång med att skriva appar och liknande. Dessa är
oftast byggda för ett specifikt område eller ett specifikt programmeringsspråk.
Förutom att de innehåller en editor brukar det följa med kompilatorer,
debug-funktioner och andra specialiserade verktyg för just det område IDE:t
riktar sig till.

### Microsoft Visual Studio
[Visual Studio](https://www.visualstudio.com/) är den större Windows-varianten
och finns i flera versioner. Visual Studio Enterprise (och andra betalversioner)
finns gratis för studenter på UU via [Dreamspark](http://www.it.uu.se/datordrift/programvara/msdnaa).

{{< figure src="/images/editorer/msvisualstudio.png" title="Visual Studio Community 2015" >}}

### Apple Xcode
[Xcode](https://developer.apple.com/xcode/) är Apples primära IDE och är
hjälpsam för den som vill utveckla snygga appar för Mac OS X och iOS.

{{< figure src="/images/editorer/xcode.png" title="Apple Xcode" >}}

### Android Studio
[Android Studio](https://developer.android.com/studio/index.html) är det IDE
som används vid utveckling av android-appar. Tidigare baserades detta IDE på
ett Java-IDE kallat Eclipse (se nedan), men nuvarande version är en
skräddarsydd variant av IntelliJ IDEA (ett annat Java-IDE).

{{< figure src="/images/editorer/androidstudio.png" title="Android Studio" >}}

### Eclipse
[Eclipse](https://eclipse.org/) används primärt för att skriva Java-kod, men det
finns versioner som har stöd för utveckling av C/C++.
[^java]

{{< figure src="/images/editorer/eclipse.png" title="Eclipse" >}}


### IntelliJ IDEA
[IntelliJ IDEA](https://www.jetbrains.com/idea/) är ett annat exempel på Java-IDE,
som har ett lite annat upplägg än Eclipse.

{{< figure src="/images/editorer/intellij.png" title="IntelliJ IDEA Community" >}}

### Egen editor i IDE
De flesta IDE:er tillåter att du använder vilken editor som helst, men förlorar
då fördelarna att ha ett integrerat system. Samtidigt kan man gå åt det andra
hållet och konfigurera exempelvis Vim eller Emacs för att erbjuda i princip
samma funktionalitet IDE:er kan erbjuda.


[^footnote-sample]: Smidigt, eller hur?
[^eclipse]:Även populärt för att krascha datorer.
[^visual-studio]: Inkluderar den editor Windows-användare förtjänar.
[^vim-difficulty]: Dina fingrar kommer dock tacka dig när du slipper trycka in fyra tangenter samtidigt för att markera ett kodblock. 
[^emacs-toolset]: http://uploads.tapatalk-cdn.com/20121208/9y6u5eze.jpg
[^emacs-pedal]: Har hört att Emacs blir ergonomiskt om man skaffar en fotpedal.
[^emacs-os]: Emacs hade alltså varit ett bra OS, om det bara hade haft en bra editor.
[^real-programmers]: https://xkcd.com/378/
[^wimps]: MRW träffar Atom- och Sublime-användare https://www.youtube.com/watch?v=pE3-2o7tuCs
[^atom]: https://pbs.twimg.com/media/Bhfbnn3CMAA93mg.png
[^sublime]: Vilket är varför vi nämner den. Den verkar inte erbjuda något som Atom inte har, medan feature-listan ser ut som en Vim-uppdatering från 90-talet.
[^notepad]: Ser ut som det också.
[^java]: Java programmeras på samma sätt som man skulpterar en höstack. Eclipse är tydligen den hammare som passar bäst.
