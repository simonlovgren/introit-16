+++
date = "2016-08-04T13:06:57+02:00"
menu = "handledarinfo"
module = "terminalen"
title = "Rättning Terminalen"

lastmod = "2016-08-25T13:52:12+02:00"
+++

Uppgiften går ut på att skapa och hantera mappar och filer i terminalen, samt
använda pipes och enklare kommandon.

En korrekt fil finns [här](../abcd1234_terminal.tar.gz).


### Automatisk rättning:

För snabb rättning kan du använda [detta script](../terminal_corr.sh)
Den används med studentkontonamnet som argument, eg. `./terminal_corr.sh abcd1234`.
Glöm inte att använda `chmod +x ./terminal_corr.sh` för att kunna köra scriptet!


### Manuell rättning:
Vid eventuella fel ska skriptet förklara vad som har hänt. Verifiera gärna
felen innan du ger underkänt.

1. Det ska finnas en tar-boll med studentens användarnamn.
1. Du ska kunna extrahera tar-bollen med `tar -xvjf abcd1234_terminal.tar.gz`,
    varvid flaggan `-v` ska ge output enligt
    [filträdsreferensen](#filträdsreferens).
    + Att använda `rm` är en del av uppgiften, det ska alltså inte finnas
        ytterligare filer i `deluppgift_2`
    + Scriptet kommer inte kolla efter felstavade filnamn/kataloger.
        + Mindre stavfel ska inte ge underkänt, men om namnen inte stämmer alls
            kan du ge underkänt (det är inte handledarens uppgift att gissa vilka
            mappar studenten lämnat in).
        + Om det är ett mindre stavfel kan du korrigera dem och köra scriptet igen.
1. Filen `textfil.txt` ska innehålla texten `En textfil` (använd ex. `cat` för
   att kontrollera detta).
    + Vad som står är egentligen inte särskilt viktigt, så länge det
        överensstämmer med första raden i `hittad_rad.txt`
1. `hittad_rad.txt` ska innehålla samma rad som ovan, följt av rad med
   innehållet\\
   `Hitta mig! Det här är resten av raden, som visar att du har hittat den.`
    + Denna rad ska överensstämma *exakt*, eftersom det visar förståelse för
        både pipes och omdirigering
    + Du kan använda kommandot `diff <fil1> <fil2>` för att jämföra filer snabbt.




#### Filträdsreferens

```shell
terminal_uppgift_abcd1234/
terminal_uppgift_abcd1234/deluppgift_1/
terminal_uppgift_abcd1234/deluppgift_1/textfil.txt
terminal_uppgift_abcd1234/deluppgift_2/
terminal_uppgift_abcd1234/deluppgift_2/hittad_rad.txt
```
