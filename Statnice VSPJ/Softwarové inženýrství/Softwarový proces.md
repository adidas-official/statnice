---
tags: [software-engineering, software-process, methodology]
---
# Softwarový proces

**Softwarový proces** je souhrn pravidel, postupů, činností a doporučení, které určují, kdo má co během vývoje softwaru dělat. Představuje metodický rámec pro úspěšné řízení a realizaci softwarového projektu od prvotní myšlenky až po nasazení a údržbu.

## Modely softwarového procesu

Základní metodické přístupy se dělí do několika hlavních kategorií:

### 1. Vodopádový model (Waterfall)
Tradiční, sekvenční přístup. Jednotlivé fáze projektu (analýza požadavků, návrh, implementace, testování, nasazení a údržba) na sebe pevně navazují.
- **Princip:** Další fáze začne až po úplném dokončení fáze předchozí. Návrat k předchozím fázím je velmi obtížný a nákladný.
- **Vhodnost:** Projekty s pevně definovanými, stabilními požadavky, které se v průběhu vývoje nemění (např. kritické systémy, státní zakázky).

### 2. Agilní vývoj (Agile)
Iterativní a inkrementální přístup navržený jako reakce na rigiditu vodopádového modelu. Zaměřuje se na flexibilitu, lidi a rychlé dodávání funkčního softwaru. Vychází z **Manifestu agilního vývoje softwaru (Agile Manifesto)**.
- **Princip:** Práce probíhá v krátkých cyklech zvaných **sprinty** (obvykle 1–4 týdny). Na konci každého sprintu je předveden funkční přírůstek softwaru.
- **Komunikace:** Úzká spolupráce se zadavatelem, který průběžně testuje nové funkce a dává zpětnou vazbu. Požadavky se mohou neustále měnit.
- **Scrum:** Rámec agilního vývoje využívající pravidelné schůzky (např. *scrum call* / *daily standup* – rychlý denní přehled o tom, co se udělalo, co se bude dělat a jaké jsou překážky).
- **Kanban:** Metoda zaměřená na plynulý tok práce (workflow) bez pevných iterací, často vizualizovaná na tabuli s úkoly.
- **Extrémní programování (XP):** Zaměřeno na technické praktiky vývoje. Zahrnuje:
  - **Párové programování:** Dva vývojáři pracují na jednom počítači (jeden píše kód, druhý jej průběžně reviduje a přemýšlí nad širším kontextem). Velmi intenzivní, vyžaduje dodržování pracovní doby (max. 40 hodin týdně bez přesčasů).
  - **Testy řízený vývoj (TDD):** Psaní testů před samotným kódem.
  - **Sdílené vlastnictví kódu** a rotace rolí.

> **TL;DR:** Agilní přístupy jsou odlehčené, zaměřené na lidi, extrémní flexibilitu, rychlé dodávání malých funkčních celků a snadnou adaptaci na neustále se měnící požadavky.

### 3. Unifikovaný proces (Unified Process – UP / RUP)
Robustní, iterativní a architektonicky orientovaný proces, který je silně řízen riziky. Nejznámější komerční variantou je **Rational Unified Process (RUP)**.
- **Princip:** Vývoj probíhá v iteracích, přičemž největší rizika a nejsložitější architektonické prvky se implementují a testují jako první, aby se předešlo neočekávaným problémům v pozdějších fázích.
- **Fáze:** Proces definuje čtyři hlavní fáze vývoje: **Incepce** (zahájení), **Elaborace** (projektování), **Konstrukce** (realizace) a **Tranzice** (předání uživatelům).
- **Výstupy:** Na konci každé iterace vzniká spustitelný, otestovaný kód (inkrement), který lze demonstrovat zákazníkovi.

> **TL;DR:** Unifikovaný proces je robustní, strukturovaná „tovární“ metodika vhodná pro velké a komplexní systémy vyžadující formální řízení, precizní modely a stabilní architekturu.

## Související témata
- [[Softwarové profese a týmy]] – Specifické role lidí se liší podle toho, zda se vyvíjí agilně, vodopádem nebo unifikovaným procesem.
- [[Analýza požadavků]] – Klíčová aktivita na začátku každého procesu (a v každé iteraci).
- [[Objektová analýza a UML]] – Nástroj pro modelování architektury a chování systému, hojně využívaný zejména v unifikovaném procesu.
