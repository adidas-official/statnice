---
tags:
  - umělá-inteligence
  - základy
  - teorie
  - peas
---
# Inteligentní agent

## Co je to inteligentní agent?
Inteligentní agent je systém (může jít o fyzického robota, počítačový program nebo třeba samo-řízené auto), který samostatně vnímá své okolí, učí se z něj a aktivně v něm jedná. Jeho cílem je volit takové kroky, které s největší pravděpodobností povedou k úspěšnému splnění zadaného úkolu.

Zjednodušeně řečeno: Agent neustále opakuje cyklus **vnímání -> rozhodování -> akce**.

---

## Specifikace prostředí a model PEAS
Předtím než začneme jakéhokoli agenta navrhovat, musíme detailně rozumět prostředí, ve kterém bude fungovat. K této analýze se používá model **PEAS**, což je zkratka pro čtyři klíčové oblasti:

* **Performance (Výkonnost):** Jak měříme úspěch agenta? Hodnotí se, jak dobře plní svůj cíl.
  * *Příklad:* U robotického vysavače je to množství vysátého prachu a nízká spotřeba energie.
* **Environment (Prostředí):** V jakém světě se agent pohybuje a co ho obklopuje?
  * *Příklad:* Pro autonomní auto jsou to silnice, chodci, dopravní značky a ostatní vozidla.
* **Actuators (Akční členy / Efektory):** Jaké nástroje nebo "končetiny" agent používá k tomu, aby ovlivnil své okolí?
  * *Příklad:* Kola, volant, brzdy, motor nebo rameno robota.
* **Sensors (Senzory / Snímače):** Jakými "smysly" agent získává informace o okolním světě?
  * *Příklad:* Kamery, ultrazvukové senzory, GPS, teploměry či mikrofony.

Model PEAS pomáhá tvůrcům ujasnit si, **co má systém dělat, kde to má dělat, čím bude vnímat informace a jak bude na svět reagovat.**

### Příklad mimo mechanické stroje: Lékařský diagnostický systém (software)
Model PEAS lze použít i pro čistě softwarové agenty:
* **Výkonnost (P):** Přesnost diagnózy, minimalizace falešně pozitivních či falešně negativních výsledků.
* **Prostředí (E):** Pacient, lékař, nemocniční databáze.
* **Akční členy (A):** Obrazovka s výpisem doporučené léčby a diagnózy.
* **Senzory (S):** Uživatelské rozhraní pro zadávání symptomů, naměřené hodnoty z laboratoře, anamnéza z databáze.

---

## Vlastnosti prostředí
Prostředí, ve kterých se agenti pohybují, mají různé vlastnosti. Tyto vlastnosti zásadně ovlivňují to, jak složitý musí být samotný agent.

* **Plně vs. částečně pozorovatelné:**
  * *Plně:* Agent vidí v každém okamžiku celý stav světa (např. šachy – vidíme celou šachovnici).
  * *Částečně:* Agent má jen omezené informace (např. poker – nevidíme karty protihráčů, nebo jízda v mlze).
* **Jednoagentové vs. víceagentové:**
  * *Jednoagentové:* Agent je v prostředí sám (např. řešení křížovky).
  * *Víceagentové:* V prostředí je více agentů, kteří spolu mohou spolupracovat (kooperativní) nebo hrát proti sobě (konkurenční – např. šachy).
* **Deterministické vs. stochastické (náhodné):**
  * *Deterministické:* Další stav prostředí je stoprocentně určen současným stavem a akcí agenta (např. otočení volantem o 90 stupňů na trenažéru).
  * *Stochastické:* Další stav obsahuje prvek náhody nebo nejistoty (např. házení kostkou, počasí).
* **Epizodické vs. sekvenční:**
  * *Epizodické:* Rozhodnutí v jedné situaci neovlivňuje ty budoucí. Každá situace je samostatná "epizoda" (např. třídění vadných součástek na běžícím pásu).
  * *Sekvenční:* Současné rozhodnutí má vliv na budoucnost (např. tah v šachách nebo navigace v provozu).
* **Statické vs. dynamické:**
  * *Statické:* Prostředí se během rozhodování agenta nemění (např. při luštění sudoku čas okolní svět nemění).
  * *Dynamické:* Prostředí se neustále mění, i když agent zrovna nic nedělá (např. silniční provoz).
* **Diskrétní vs. spojité:**
  * *Diskrétní:* Prostředí má konečný a jasně oddělený počet stavů a akcí (např. deskové hry, kde jsou jasně daná políčka a tahy).
  * *Spojité:* Stavy a veličiny se mění plynule (např. rychlost auta, teplota, čas).
* **Známé vs. neznámé:**
  * *Známé:* Agent zná všechna pravidla a fyzikální zákony prostředí (např. pravidla hry).
  * *Neznámé:* Agent se pravidla prostředí musí teprve naučit (např. nová videohra, kterou hraje poprvé).

---

## Jak si agent představuje svět (Reprezentace prostředí)
Aby mohl agent plánovat, musí si svět nějak vnitřně modelovat. K tomu se nejčastěji používají tyto modely:

1. **Mřížkový svět (Grid World):** Svět je rozdělen na jednotlivá políčka (mřížku). Typické pro zjednodušené simulace pohybu robotů nebo vysavačů.
2. **Graf stavového prostoru (State-Space Graph):** Síť bodů (stavů) spojených čarami (přechody). Tento graf se skládá z pěti základních prvků:
  * **Počáteční stav:** Kde agent začíná.
  * **Dostupné akce:** Co všechno může agent v daném stavu udělat.
  * **Model přechodu:** Pravidlo, které říká, do jakého stavu se agent dostane po vykonání určité akce.
  * **Cílový stav:** Podmínka nebo stav, kterého chceme dosáhnout.
  * **Cena akce:** "Nákladnost" kroku (může to být spotřebovaná energie, ujetá vzdálenost nebo čas). Agent se snaží celkovou cenu minimalizovat.

---

## Typy agentů (Taxonomie)
Podle toho, jak složitě se agent rozhoduje, je můžeme rozdělit do několika základních skupin:

* **Agent řešící problémy (prohledávací agent):**
  Má perfektní znalost prostředí. Předem si naplánuje celou ideální a nejlevnější cestu k cíli a pak ji jen slepě vykoná. Funguje skvěle v deterministickém, statickém a plně pozorovatelném prostředí.
  * *Příklad:* GPS navigace plánující nejrychlejší trasu.
* **Logický agent:**
  Rozhoduje se na základě logických pravidel. Dokáže odvozovat nové informace o prostředí, které přímo nevidí, pomocí logického uvažování a dedukce.
  * *Příklad:* Počítačový hráč logické hry Hledání min nebo Wumpusova jeskyně.
* **Učící se agent:**
  Na začátku nemusí prostředí dokonale znát. Učí se metodou pokus-omyl, vyhodnocuje úspěšnost svých akcí a neustále se zlepšuje, aby dosáhl cíle efektivněji.
  * *Příklad:* Umělá inteligence, která se učí hrát složité videohry nebo ovládat robotickou ruku.
