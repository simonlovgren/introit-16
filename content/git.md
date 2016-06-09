+++
date = "2016-05-04T09:31:00+02:00"
menu = "git"
module = "git"
title = "GIT"

+++


# Register (Long Mode)
| Namn             | bits           | Beskrivning                                                      |
| ---------------- | -------------- | ---------------------------------------------------------------- |
|                  |                | **Standard registers**                                           |
| `rax`            | 64             | Accumulator register                                             |
| `rbx`            | 64             | Base index register (for use with arrays)                        |
| `rcx`            | 64             | Counter register (for use with loops and strings)                |
| `rdx`            | 64             | Extend the precision of the accumulator (e.g. combine 32-bit eax and edx for 64-bit integer operations in 32-bit code) |
| `rsi`            | 64             | Source index (for string operations)                             |
| `rdi`            | 64             | Destination index (for string operations)                        |
| `r8` - `r15`     | 64             | General registers (No particular purpose envisioned for these registers) |
|                  |                |                                                                  |
|                  |                | **Stack- and PC registers**                                                |
| `rbp`            | 64             | Stack base pointer (Address of current stack frame)              |
| `rsp`            | 64             | Stack pointer (Top address of the stack)                         |
| `rip`            | 64             | Program Counter Register (Really extended Instruction Pointer)   |
|                  |                |                                                                  |
|                  |                | **Segment registers**                                            |
| `cs`             | 16             | Code segment                                                     |
| `ds`             | 16             | Data segment                                                     |
| `ss`             | 16             | Stack segment                                                    |
| `es`             | 16             | Extra data                                                       |
| `fs`             | 16             | Extra data                                                       |
| `gs`             | 16             | Extra data                                                       |
|                  |                |                                                                  |
|                  |                | **FPU Control registers** *80387 external math co-processor* (probably) |
| `fctrl` (i gdb)  | ???            | Control register                                                                 |
| `fstat` (i gdb)  | ???            | Status register                                                  |
| `ftag`  (i gdb)  | ???            | Tag register                                                     |
| `fiseg` (i gdb)  | ???            | ???                                                              |
| `fioff` (i gdb)  | ???            | ???                                                              |
| `foseg` (i gdb)  | ???            | ???                                                              |
| `fooff` (i gdb)  | ???            | ???                                                              |
| `fop`   (i gdb)  | ???            | ???                                                              |
|                  |                |                                                                  |
|                  |                | **FPU data registers**                                           |
| `st0` - `st7`    | 80             | FPU data registers (80387)                                       |
|                  |                |                                                                  |
|                  |                | **SSE Registers**                                                |
| `xmm0` - `xmm15` | 128            | SSE Registers (floating point, SIMD and more)                    |

<!--
|          |            |                |                                                                  |
-->

## Register-schema
De namn som anges i GDB vid dum av samtliga register stämmer ej fullt överens med namnen i denna graf, men de flesta register går hitta här.

{{< figure src="https://upload.wikimedia.org/wikipedia/commons/1/15/Table_of_x86_Registers_svg.svg" title="x86_64 registers" link="https://upload.wikimedia.org/wikipedia/commons/1/15/Table_of_x86_Registers_svg.svg">}}



# Referenser
- [Wikipedia x86 (Registerinfo)](https://en.wikipedia.org/wiki/X86)
- [Oracle Registerinfo](https://docs.oracle.com/cd/E19205-01/819-5257/blaos/index.html)
- [OsDev Wiki FPU](http://wiki.osdev.org/FPU)

{{< figure src="images/example.jpg" title="Exempelfigur med caption" >}}


## Projektresurser
- [Projektplans presentation](https://docs.google.com/presentation/d/1IFmvzj9U_PQuYP2voOFIKbXf-4Sou9005qxdg65yVhQ/edit#slide=id.p) från google-drive.

## Andra OS-kärnor
- Zinc (realtids-OS för ARM): https://github.com/hackndev/zinc
- RedoxOS (mikrokärna): https://github.com/redox-os/redox
- https://github.com/thepowersgang/rust-barebones-kernel
- https://github.com/gz/rust-x86
- Implementerad SMT, I/O, etc., dock utdaterad: https://github.com/krzysz00/rust-kernel

## Guider etc
- OSDev Wiki (allt man ville veta men var rädd att fråga): http://wiki.osdev.org/Main_Page
- PhilOpps guide till ett OS i Rust: http://os.phil-opp.com/
- Om vad ett RealTimeOS är: http://www.ni.com/white-paper/3938/en/
- X86 Assembly Bootloader https://en.wikibooks.org/wiki/X86_Assembly/Bootloaders
- Intel 32/64 ISA/Software Developer manuals: http://www.intel.com/content/www/us/en/processors/architectures-software-developer-manuals.html
- Intermezzos – en bok/ett hobbyistOS i Rust, en sorts fortsättning på PhilOpps guide http://intermezzos.github.io/book/  
- http://www.randomhacks.net/bare-metal-rust/ en annan guide baserad på PhilOpps
- [Getting to User Mode](http://xarnze.com/article/Entering%20User%20Mode), en guide i C till hur man tar sig till (och -från) User Mode
- [Recursive page tables](http://www.rohitab.com/discuss/topic/31139-tutorial-paging-memory-mapping-with-a-recursive-page-directory/), ganska förståelig guide till recursive page tables.

## Bra-att-ha-nån-gång-resurser
- [OSDev om hur man programmerar nätverkskortet som QEMU emulerar](http://wiki.osdev.org/RTL8139)
- [OSDevs lista över exceptionkoder](http://wiki.osdev.org/Exceptions)
- [OSDevs artikel om APIC, Interruptkontrollern som används för bl.a. multicore](http://wiki.osdev.org/APIC)
- [OSDevs artikel om PIT, den gamla interruptkontrollern](http://wiki.osdev.org/PIT)

## Övrigt
- Rumsbokning! http://brolutions.com/broomfinder/

# QEMU
QEMU har inbyggt stöd för att koppla in en debugger via GDB:s fjärrprotokoll. Detta aktiveras genom att lägga till `-s` flaggan vid start av emulatorn.

Detta läggs till i Makefilen för regeln `run`. Detta gör att man när som helst under körning kan koppla in GDB.
```make
run: $(iso)
    @qemu-system-x86_64 -cdrom $(iso) -s
```

Vi skapar även en ny regel `debug`. Flaggan `-S` gör att QEMU väntar med att starta tills GDB kopplat upp sig.
```make
debug: $(iso)
    @qemu-system-x86_64 -cdrom $(iso) -s -S
```

# GDB
För debuggning av OS:et krävs dessvärre en custom-byggd GDB, då GDB ej klarar hantera bytet till 64-bitar. Detta har varit ett känt problem [sedan 2012](http://www.cygwin.com/ml/gdb-patches/2012-03/msg00116.html), men har ännu ej åtgärdats.

Patchen som löser detta problem är väldigt liten och *Philipp Oppermann* har skapat ett git-repo med den patchade GDB:n. Denna finns tillgänglig på [phil-opp/binutils-gdb](https://github.com/phil-opp/binutils-gdb).

För att kompilera & "installera" den patchade versionen av GDB krävs först visa dependencies:
```bash
apt-get install texinfo flex bison python-dev ncurses-dev
```

Därefter kan GDB hämtas- och kompileras för `x86_64-pc-linux-gnu` genom:
```bash
curl -sf https://raw.githubusercontent.com/phil-opp/binutils-gdb/rust-os/build-rust-os-gdb.sh | sh
```

Detta kompilerar- och installerar till en undermapp kallad `rust-os-gdb` innehållande `gdb`-binären samt ett `rust-gdb` script. Det är detta script som skall kallas för att starta GDB.

# GDB <--> QEMU
QEMU lyssnar efter GDB på portnummer `1234`, mot vilken GDB kan kopplas via makeregeln `gdb`:
```make
gdb:
    @rust-os-gdb/bin/rust-gdb $(kernel) -ex "target remote :1234"
```

Detta laddar debug-information från OS-binären och kopplar upp mot `localhost:1234`.

# Starta Debuggning
För att starta debuggning, öppna först två terminalfönster. Det ena kommer användas till *GDB* och det andra till *QEMU Monitor*. För snabbguider till *GDB* och *QEMU monitor*, se nästkommande sektion.

För att starta QEMU med monitor **som väntar på att GDB kopplar upp sig** och presenterar monitor, navigera till `projekt-root` och skriv
```bash
make debug
```

För att starta GDB **som kopplar upp sig mot QEMU**, navigera till `projekt-root` och skriv
```bash
make gdb
```

QEMU är nu pausad och väntar på signal från GDB för att starta exekvering. Passa på att sätta ut `breakpoints` i GDB för att exekveringen skall stanna vid den punkt du är intresserad av. För att t.ex. stanna direkt vid start av `rust_main` kan breakpointen sättas ut via `b rust_main` eller `break rust_main`.

Därefter kan VM:en startas genom att, i GDB, ange commandot `continue` eller `c`.

# Snabbguider

## Visa källkod och assembler och stega igenom instruktioner
Om man startar gdb med växeln `-tui` alternativt kör kommandot `tui enable` aktiveras ett nästan-grafiskt terminal-UI. Om man ger kommandot `layout split` får man en vy som visar _både_ nuvarande kodsegment i Assembly och Rust, sida vid sida. Sedan kan man använda `stepi` (kom ihåg att Enter repeterar föregånede kommando!) för att stega igenom assemblyn instruktion för instruktion.

## GDB
| Kommando                                     | Argument                                                                                   | &nbsp;&nbsp;                                                                     | Beskrivning                                                                   |
| ---------------------------------------------|--------------------------------------------------------------------------------------------| -------------------------------------------------------------------------------- | ------------------------------------------------------------------------------|
| `help` / `h`                                 | `N/A`                                                                                      |                                                                                  | Visa hjälp-info                                                               |
| `break` / `b`                                | flaggor (ex. `rust_main`)  eller specifika rader (ex. `lib.rs:25`)                         | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Sätta ut breakpoints                                                          |
| `disable <arg>`                              | breakpoint-nummer                                                                          |                                                                                  | Inaktivera breakpoint.                                                        |
| `enable <arg>`                               | breakpoint-nummer                                                                          |                                                                                  | Aktivera breakpoint.                                                          |
| `delete <arg>`                               | breakpoint-nummer                                                                          | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Ta bort breakpoint.                                                           |
| `continue` / `c`                             | `N/A`                                                                                      | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Fortsätt exekvering fram till nästa breakpoint.**                             |
| `next` / `n`                                 | `N/A`                                                                                      | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Stega framåt, hoppa över funktionen som skall exekveras.                      |
| `step` / `s`                                 | `N/A`                                                                                      | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Stega framåt, in i funktionen som skall exekveras.
| `stepi`                                 | `N/A`                                                                                      | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Stega framåt en ASM-instruktion i taget.                               |
| `list <rad>` / `l <rad>`                     | `radnummer` eller `inget argument` för nuvarande rad                                       |                                                                                  | Listar kodrader kring den nuvarande positionen.                               |
| `print <format> <var>` / `p <format> <var>`  | Se [print-formattering](#print--formatering--anv%C3%A4ndning) nedan.                       |                                                                                  | Skriva ut innehåll i en variabel.                                             |
| `set <var> = <value>`                   | Se [GDB set](#gdb-set) nedan.                       | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Sätt registervärden och variabelvärden.                                             |
| `x<format> <addr>`                           | `format` och `adress`.<br/>Se [GDB eXamine physical memory](#gdb-examine-physical-memory)  | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Undersök fysiska minnet fr.o.m. `<addr>`                                      |
| `tui <arg>`                                  | `enable` eller `disable`                                                                   |                                                                                  | GDB Text user interface                                                       |
| `info registers`                             | `inget argument` eller `register`. Se [info/info registers](#info-registers).              | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Dumpa information ur CPU-register                                             |
| `info threads`                               |                                                                                            | [[http://gcc.preview.dxrgroup.com/assets/img/check-circle.png|alt=good_to_know]] | Lista samtliga trådar och deras status. Se [info/info threads](#info-threads) |

### Print- formatering & användning
#### Skriva ut variabler & värden
För att skriva ut en specifik variabel i GDB skriver man:
```bash
print my_varname
```

Man kan även skriva ut innehåll i register eller exempelvis programräknaren genom att använda deras namn (ex. `$eax` för *eax*-registret och `$pc` för programräknaren:

```
(gdb) print $pc
```

```
(gdb) print $eax
```

#### Formatera output
När man använder `print` i GDB kan även formatera dessa på flera sätt. För att exempelvis skriva ut en variabel i hexadecimal skriver man:
```bash
print/x my_varname
```

#### Tillgängliga modifieringsflaggor

| Flagga   | Beskrivning         |
| -------- | ------------------- |
| `o`      | octal               |
| `x`      | hexadecimal         |
| `d`      | decimal             |
| `u`      | unsigned decimal    |
| `t`      | binary              |
| `f`      | floating point      |
| `a`      | address             |
| `c`      | char                |
| `s`      | string              |
| `i`      | instruction         |

### GDB set
GDB:s `set`-kommando kan användas för att modifiera värden på variabler **samt** registervärden. Detta kan vara användbart vid debuggning. T.ex. kan programräknaren flyttas till den instruktion man anser intressant:

```text
(gdb) set $pc = 0x100b1a
```

eller värden i register kan ändras:
```text
(gdb) set $eax = 42
```
### GDB eXamine physical memory
GDB:s `x`-kommando använsd för att undersöka det fysiska minnet från given `adress`. Detta är väldigt användbart, speciellt eftersom man kan välja flertalet format, längd per individuell data och dessutom antal poster som skall skrivas ut.

I sin enklaste form skriver kommandot ut innehållet på en minnesplats i `hexadecimal`. Här är utskrift av data på adress `0x11a614`:
```bash
(gdb) x 0x11a614                                                              
0x11a614:       0x000010ec
```
#### Formatera data
Formatet på data som skrivs ut går modifiera mha. dessa flaggor:

| Flagga   | Beskrivning         |
| -------- | ------------------- |
| `o`      | octal               |
| `x`      | hexadecimal         |
| `d`      | decimal             |
| `u`      | unsigned decimal    |
| `t`      | binary              |
| `f`      | floating point      |
| `a`      | address             |
| `c`      | char                |
| `s`      | string              |
| `i`      | instruction         |

*Exempel*
```text
(gdb) x/i 0x11a614
   0x11a614:    in     (%dx),%al
```
#### Längd på data
Längden på data som skrivs ut går modifiera mha. dessa flaggor:

| Flagga   | Storlek (bytes) | Beskrivning         |
| -------- | --------------- | ------------------- |
| `b`      | 1               | Byte                |
| `h`      | 2               | Halfword            |
| `w`      | 4               | Word                |
| `g`      | 8               | Giant word          |

*Exempel*
```text
(gdb) x/b 0x11a614                                                                                                                                            
0x11a614:       0xec
```

#### Antal dataposter
Antal dataposter som skall visas går notera genom att, i siffror, skriva antalet poster som skall skrivas ut.

*Exempel*
```text
(gdb) x/3 0x11a614
0x11a614:       0xec    0x10    0x00
```

#### Utökade Exempel
```text
(gdb) next
3 char testArray[] = "0123456789ABCDEF";

(gdb) next
4 return 0;

(gdb) x testArray
0xbfffef7b: 0x33323130

(gdb) x/c testArray
0xbfffef7b: 48 '0'

(gdb) x/5c testArray
0xbfffef7b: 48 '0' 49 '1' 50 '2' 51 '3' 52 '4'

(gdb) x/2c
0xbfffef80: 53 '5' 54 '6'

(gdb) x/wx testArray
0xbfffef7b: 0x33323130

(gdb) x/2hx testArray
0xbfffef7b: 0x3130 0x3332

(gdb) x/gx testArray
0xbfffef7b: 0x3736353433323130

(gdb) x/s testArray
0xbfffef7b: "0123456789ABCDEF"

(gdb) x/5bx testArray
0xbfffef7b: 0x30 0x31 0x32 0x33 0x34

(gdb) x/5i $pc
=> 0x8048477 <main()+58>: mov $0x0,%eax
0x804847c <main()+63>: mov 0x1c(%esp),%edx
0x8048480 <main()+67>: xor %gs:0x14,%edx
0x8048487 <main()+74>: je 0x804848e <main()+81>
0x8048489 <main()+76>: call 0x8048310 <__stack_chk_fail@plt>
```
*Exempel ovan från [visualgdb.com/gdbreference](http://visualgdb.com/gdbreference/commands/x)*

### GDB - info
GDB:s info-kommando har flera användningsområden.

#### info threads
`info threads` kan användas för att lista samtliga trådar, vilken status de har samt vilken frame de befinner sig i:
```text
(gdb) info threads
  Id   Target Id         Frame
* 1    Thread 1 (CPU#0 [running]) banjos::rust_main (multiboot_information_address=1208144) at src/lib.rs:71
```

#### info registers
`info registers` kan användas för att dumpa nuvarande registerinehåll från processorn. Antingen kan man dumpa alla register eller specifika register:

*Dumpa endast `eax`-registret*
```text
(gdb) info registers eax
eax            0x10d8f0 1104112
```
*Dumpa standard-register*
```text
(gdb) info registers
rax            0x10d8f0 1104112
rbx            0x0      0
rcx            0x18     24
rdx            0x10d8f0 1104112
rsi            0x10d8f8 1104120
rdi            0x10d908 1104136
rbp            0x10dff0 0x10dff0
rsp            0x10d580 0x10d580
r8             0xa0     160
r9             0x10d800 1103872
r10            0x126fb0 1208240
r11            0x7f     127
r12            0x10de38 1105464
r13            0x10dea0 1105568
r14            0x10dcd0 1105104
r15            0x10dcd8 1105112
rip            0x1010eb 0x1010eb <banjos::rust_main+3899>
eflags         0x200002 [ ID ]
cs             0x8      8
ss             0x10     16
ds             0x10     16
es             0x10     16
fs             0x18     24
gs             0x18     24
```

*Dumpa samtliga register*
```text
(gdb) info all-registers
rax            0x0      0
rbx            0x663    1635
rcx            0x0      0
rdx            0x0      0
rsi            0x20000fff0      8590000112
rdi            0xf000   61440
rbp            0x0      0x0
rsp            0x0      0x0
r8             0x0      0
r9             0x0      0
r10            0x0      0
r11            0x0      0
r12            0x0      0
r13            0x0      0
r14            0x0      0
r15            0x0      0
rip            0x0      0x0
eflags         0x0      [ ]
cs             0x0      0
ss             0x37f    895
ds             0x0      0
es             0x0      0
fs             0x0      0
gs             0x0      0
st0            0        (raw 0x00000000000000000000)
st1            0        (raw 0x00000000000000000000)
st2            0        (raw 0x00000000000000000000)
st3            0        (raw 0x00000000000000000000)
st4            0        (raw 0x00000000000000000000)
st5            0        (raw 0x00000000000000000000)
st6            0        (raw 0x00000000000000000000)
st7            0        (raw 0x00000000000000000000)
fctrl          0x0      0
fstat          0x0      0
ftag           0x0      0
fiseg          0x0      0
fioff          0x0      0
foseg          0x0      0
fooff          0x0      0
fop            0x0      0
xmm0           {v4_float = {0x0, 0x0, 0x0, 0x0}, v2_double = {0x0, 0x0},
 nt8 = {0x0 <repeats 16 times>}, v8_int16 = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}, v4_int32 = {0x0, 0x0, 0x0, 0x0}, v2_int64 = {0x0, 0x0},
  uint128 = 0x00000000000000000000000000000000}
xmm1           {v4_float = {0x0, 0x0, 0x0, 0x0}, v2_double = {0x0, 0x0}, v16_int8 = {0x0 <repeats 12 times>, 0x80, 0x1f, 0x0, 0x0}, v8_int16 = {0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x1f80, 0x0}, v4_int32 = {0x0, 0x0, 0x0, 0x1f80}, v2_int64 = {0x0, 0x1f8000000000}, uint128 = 0x00001f80000000000000000000000000}
xmm2           {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm3           {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm4           {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm5           {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm6           {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm7           {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm8           {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm9           {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm10          {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm11          {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {<unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm12          {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm13          {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm14          {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
xmm15          {v4_float = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_double = {<unavailable>, <unavailable>}, v16_int8 = {
    <unavailable> <repeats 16 times>}, v8_int16 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>, <unavailable>,
    <unavailable>}, v4_int32 = {<unavailable>, <unavailable>, <unavailable>, <unavailable>}, v2_int64 = {<unavailable>, <unavailable>},
  uint128 = <unavailable>}
mxcsr          <unavailable>
```

## QEMU Monitor
QEMU monitor har ett antal kommandon, men de flesta har motsvarigheter i GDB vilka är att föredra (bara behöva använda ett interface).

### Kort kommandolista
| Kommando         | Beskrivning                                                                                                                  |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| `xp`             | eXamine Physical memory. Much like GDB's x command, but with no address translation.                                         |
| `cpu <n>`        | switch to CPU n. Note that GDB's threads are numbered from 1, but QEMU's CPUs are numbered from 0.                           |
| `info registers` | dump register state                                                                                                          |
| `info tlb`       | Show virtual memory translation state.                                                                                       |
| `info mem`       | Show the page table mappings in a compact form.                                                                              |
| `help`           | List all commands -- keep in mind that there may be more commands available than those  mentioned in the [QEMU documentation](http://wiki.qemu.org/Qemu-doc.html#SEC12).  |
