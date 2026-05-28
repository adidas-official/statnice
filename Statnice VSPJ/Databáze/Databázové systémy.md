---
tags:
  - databáze
  - teorie
  - studium
---
# Definice systému
Databázový systém je databáze (s daty) a systémem řízení báze dat (software  - MySQL, PostgreSQL, Oracle)

# Rozcestník
- [[Plánování databáze]]
- [[Základní stavební kameny]]

---
# Funkční závislosti

Funkční závislost (FZ) znamená, že z hodnoty jednoho atributu lze jednoznačně odvodit hodnotu jiného atributu. Pokud pro všechny záznamy v tabulce platí, že pro stejnou hodnotu atributu $A_1$ (např. $X$) má atribut $A_2$ vždy stejnou hodnotu (např. $Y$), pak zapisujeme $A_1 \rightarrow A_2$.

* **Determinant:** Atribut (nebo kombinace více sloupců), od kterého se hodnota odvozuje.
* **Důležité upozornění:** Funkční závislost musí vyplývat ze sémantiky dat a logiky domény, nesmí jít o pouhou shodu náhod v aktuálních datech.
* *Příklad:* V tabulce s atributy `(NAZEV_KINA, JMENO_FILMU) -> DATUM` určuje kombinace kina a filmu konkrétní datum promítání.

## Armstrongova pravidla
Jedná se o odvozovací pravidla pro zjednodušení a analýzu funkčních závislostí. Slouží jako mechanismus pro hledání skrytých závislostí a následné odstranění těch nadbytečných.

* **Triviální FZ:** Atribut určuje sám sebe (případně podmnožinu svých atributů). Pokud máme atributy `(jmeno, prijmeni)`, pak tato dvojice určuje např. samotný atribut `jmeno`.
* **Tranzitivita:** Pokud platí $X \rightarrow Y$ a zároveň $Y \rightarrow Z$, pak platí také $X \rightarrow Z$.
* **Kompozice:** Pokud platí $X \rightarrow Y$ a zároveň $X \rightarrow Z$, pak platí také $X \rightarrow YZ$.
* **Dekompozice:** Pokud platí $X \rightarrow YZ$, pak lze tuto závislost rozložit na $X \rightarrow Y$ a $X \rightarrow Z$.

---

# Normalizace a normální formy

Databáze se navrhují tak, aby data nebyla uložena v jedné obrovské univerzální tabulce, ale aby byla logicky rozdělena do souvisejících celků (tabulek). Tento proces se nazývá **normalizace**.

## Aktualizační anomálie
Nekonzistence dat, která nastává při špatném návrhu schématu. Pokud se stejná informace nachází na více místech (redundance), musíme při její změně upravit všechny výskyty. Pokud na některý zapomeneme nebo se operace nezdaří, data přestanou být konzistentní a nelze určit, která informace je správná.

## Cíl normalizace
* **Efektivní ukládání dat:** Odstranění redundance (nadbytečného opakování dat) při zachování logických vazeb.
* **Atomizace:** Rozdělení dat na nejmenší dále nedělitelné části (atomické hodnoty).
* **De-normalizace:** Záměrné porušení normálních forem. Používá se v odůvodněných případech (např. v datových skladech), kdy na úkor zvýšení redundance snižujeme počet nutných spojování tabulek (`JOIN`), a tím výrazně zrychlujeme odezvu databáze.

## Stupně normalizace

* **1. NF (První normální forma):**
    * Všechny datové prvky (atributy) musí být atomické (dále nedělitelné). 
    * *Protipříklad:* Sloupec `adresa` obsahující zároveň ulici i město. Pro splnění 1. NF je nutné jej rozdělit na samostatné sloupce `ulice` a `mesto`.

* **2. NF (Druhá normální forma):**
    * Tabulka musí splňovat 1. NF a zároveň platí, že každý nekličový atribut musí být plně funkčně závislý na celém primárním klíči (nikoliv pouze na jeho části).
    * Týká se tedy pouze tabulek, které používají složený primární klíč.
    * *Příklad:* Pokud je klíčem dvojice `(kino, film)` a v tabulce je sloupec `adresa_kina`, tento sloupec závisí pouze na části klíče (`kino`). To porušuje 2. NF a adresa by měla být vyčleněna do samostatné tabulky kin.

* **3. NF (Třetí normální forma):**
    * Tabulka musí splňovat 2. NF a nesmí obsahovat žádné tranzitivní závislosti. 
    * Všechny nekličové vlastnosti musí být závislé výhradně na primárním klíči a nesmí být závislé na jiném nekličovém atributu.

* **4. NF a 5. NF:**
    * Vyšší normální formy, které řeší vícehodnotové závislosti a závislosti spojení.

## Pokrytí závislostí při dekompozici
Při rozdělování (dekompozici) jedné tabulky na více menších tabulek musí být zachovány všechny funkční závislosti.

* *Nevhodný příklad dekompozice:*
    Máme tabulku s atributy `(FIRMA, SIDLO, NADMORSKA_VYSKA)`, kde platí závislost `SIDLO -> NADMORSKA_VYSKA`.
    Pokud tabulku nevhodně rozdělíme na:
    1. `(FIRMA, SIDLO)`
    2. `(FIRMA, NADMORSKA_VYSKA)`
    
    Ztratíme přímou vazbu mezi sídlem a nadmořskou výškou. Do první tabulky můžeme vložit záznamy `("CZ.NIC", "Praha")` a do druhé `("CZ.NIC", 400)`. Pokud následně přidáme firmu `("Datart", "Praha")` and do druhé tabulky `("Datart", 600)`, vznikne rozpor: obě firmy sídlí v Praze, ale jedna má uloženu nadmořskou výšku 400 a druhá 600. Správná dekompozice by měla zachovat tabulku `(SIDLO, NADMORSKA_VYSKA)`.

---

# Pokročilejší rysy SQL a databázové koncepty

## Transakce
Transakce představuje skupinu databázových operací, které se provedou jako jeden nedělitelný celek (všechno, nebo nic). Databáze garantuje možnost vrátit se do původního stavu před začátkem transakce (tzv. rollback), pokud během jejího zpracování dojde k chybě.

## Další oblasti studia
* **Fyzická vrstva databáze:** Způsob, jakým jsou data fyzicky ukládána na disku, indexace a optimalizace přístupu k datům.
* **Procedurální rozšíření SQL:** Použití programovacích struktur přímo v databázi (např. PL/SQL v Oracle, PL/pgSQL v PostgreSQL) pro tvorbu uložených procedur, funkcí a triggerů (spouští).
* **Objektově orientované databáze (OODBMS):** Databázové systémy, které ukládají data ve formě objektů, jak jsou známy z OOP.
* **Objektově-relační model (ORDBMS):** Hybridní model kombinující relační databázi s vybranými objektovými rysy (např. uživatelsky definované typy, dědičnost).