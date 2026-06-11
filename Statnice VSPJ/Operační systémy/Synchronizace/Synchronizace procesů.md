# Co je to synchronizace
Více procesů může chtít pracovat se **sdíleným prostředkem** - například zapisovat do stejného souboru nebo číst stejnou adresu v paměti atd. Aby nedocházelo ke kolizím je potřeba procesy správně sesynchronizovat.
# Synchronizační metody
## Producent a konzument
- Jeden proces data do [[Zásobník|zásobníku]] vkládá, druhý je zpracovává
- Producent data vytváří a nemůže zapisovat do zásobníku, pokud je plný
- Konzument data na zásobníku zpracovává a nemůže číst, pokud je prázdný
## Čtenář a písař
- Řeší problém přístupu k databázi.
- Čtenář data pouze čte, může jich být neomezeně, navzájem si nevadí.
- Písař do databáze zapisuje. Nesmí zapisovat někam, kam už jiný písař zrovna zapisuje.
# Chyby v synchronizaci
## Uváznutí (Deadlock)
Proces **P1** v [[Kritická sekce|kritické sekci]] přistupuje k prostředku **A** a čeká na prostředek **B**.
Proces **P2** ve své kritické sekci přistupuje k prostředku **B** a čeká na prostředek **A**.
**Cyklické čekání**: Ani jeden z procesů nemůže dokončit svoji činnost, dokud druhý proces neuvolní svůj prostředek.
**Inkrementální požadavky** - proces drží prostředek a zároveň čeká na další.
## Stárnutí (Starvation)
Proces čeká, až mu procesor povolí přístup k prostředku z jeho kritické sekce, ale nikdy se nedočká. Může mít moc nízkou prioritu nebo jiný proces prostředek drží neustále.
# Synchronizační prostředky
Pro řešení problému s [[Kritická sekce|kritickou sekcí]] se používá několik prostředků:
## MUTEX
MUTual Exclusion - Proces si prostředek uzamkne a žádný další proces s ním nemůže pracovat, dokud MUTEX prostředek zase neodemkne. MUTEX smí uvolnit pouze ten proces, který ho uzamkl. 
## Binární semafor
Stejné jako MUTEX, ale proces může odemknout i jiný proces.
## Semafor
Počítadlo, kolik procesů může ve své kritické sekci přistoupit k sdílenému prostředku. Pokud je místo pro další proces, počítadlo se zvýší o jedna a jestli dosáhne maxima povolených procesů, prostředek se uzamkne pro další procesy.
## Zprávy
Procesy si mezi sebou posílají zprávy (skrz procesor), které signalizují čekajícím procesům, že prostředek byl zabrán nebo uvolněn. Mohou být blokující nebo neblokující.