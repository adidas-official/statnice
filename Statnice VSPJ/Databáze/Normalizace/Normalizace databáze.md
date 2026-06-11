Databáze se navrhují tak, aby data nebyla uložena v jedné obrovské univerzální tabulce, ale aby byla logicky rozdělena do souvisejících celků (tabulek). Tento proces se nazývá **normalizace**.
## Cíl normalizace
* **Efektivní ukládání dat:** Odstranění redundance (nadbytečného opakování dat) při zachování logických vazeb.
* **Atomizace:** Rozdělení dat na nejmenší dále nedělitelné části (atomické hodnoty).
* **De-normalizace:** Záměrné porušení normálních forem. Používá se v odůvodněných případech (např. v datových skladech), kdy na úkor zvýšení redundance snižujeme počet nutných spojování tabulek (`JOIN`), a tím výrazně zrychlujeme odezvu databáze.
## Stupně normalizace

>"Každý neklíčový sloupec musí záviset na **klíči** (1NF), na **celém klíči** (2NF) a **na ničem jiném než na klíči** (3NF), k čemuž mi dopomáhej Codd (tvůrce relačního modelu)."

* **1. NF (První normální forma):**
    * Všechny datové prvky (atributy) musí být atomické (dále nedělitelné). 
    * *Protipříklad:* Sloupec `adresa` obsahující zároveň ulici i město. Pro splnění 1. NF je nutné jej rozdělit na samostatné sloupce `ulice` a `mesto`.

* **2. NF (Druhá normální forma):**
    * Tabulka musí splňovat 1. NF a zároveň platí, že každý neklíčový atribut musí být plně funkčně závislý na celém primárním klíči (nikoliv pouze na jeho části).
    * Týká se tedy pouze tabulek, které používají složený primární klíč.
    * *Příklad:* Pokud je klíčem dvojice `(kino, film)` a v tabulce je sloupec `adresa_kina`, tento sloupec závisí pouze na části klíče (`kino`). To porušuje 2. NF a adresa by měla být vyčleněna do samostatné tabulky kin.

* **3. NF (Třetí normální forma):**
    * Tabulka musí splňovat 2. NF a nesmí obsahovat žádné tranzitivní závislosti. 
    * Všechny neklíčové vlastnosti musí být závislé výhradně na primárním klíči a nesmí být závislé na jiném neklíčovém atributu.

* **4. NF a 5. NF:**
    * Vyšší normální formy, které řeší vícehodnotové závislosti a závislosti spojení.