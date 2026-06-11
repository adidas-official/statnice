## Plánovače
Modul operačního systému, který určuje, kterému procesu bude přidělen procesor se nazývá plánovač. Dělí se na:
- **Krátkodobý plánovač** - Rozhoduje, zda bude proces zpracován nebo ne
- **Střednědobý plánovač** - Odkládá aktuálně nepotřebné data běžícího procesu na disk (swap)
- **Dlouhodobý plánovač** -  Procesy odkládá na dobu, kdy pro ně bude místo
# Stavy přidělování procesoru
- Nový - proces se vytváří, procesor mu alokuje paměť a prostředí
- Připravený - proces má všechno potřebné a čeká ve frontě, až se mu přidělí procesor
- Běžící - proces právě CPU zpracovává, vykonává jeho instrukce
- Čekající - proces nemůže běžet, čeká na dokončení nějaké vnější události
- Ukončený - procesor ukončil činnost na procesu, tzn. buď doběhl nebo byl násilně ukončen
# Způsoby přidělování procesoru v multi-procesorovém systému
Pokud má systém více procesorů, může procesor přidělit procesu jádro, které je nejméně vytížené. Nebo může procesor sám vyhledat proces, na kterém může začít pracovat, pokud není vytížený. Těmto metodám se říká **Migration pull** a **Migration push**
# Mechanismy přepnutí kontextu
Přepnutí kontextu je stav, kdy procesor jeden proces uloží a načte jiný. Uchování stavu běžícího procesu a zavedení jiného , který má začít běžet. Ukládá například hodnoty v registru a proměnné. Procesor to stojí čas a zdroje. Změnu přepnutí kontextu provádí [[Dispečer]]. Máme dva mechanismy:
- [[Kooperativní multitasking]]
- [[Preemptivní multitasking]]
