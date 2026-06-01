---
tags: [software-engineering, estimation, project-management, economics]
---
# Odhad nákladů softwaru

Odhadování nákladů a pracnosti je klíčovou součástí řízení rozpočtů a rizik v softwarových projektech. Pro výpočet pracnosti (zpravidla v osoboměsících) a finančních nákladů se používají různé metodiky.

##  Hlavní metody odhadu

### 1. COCOMO (Constructive Cost Model)
Model navržený Barrym Boehmem, který odhaduje úsilí na základě velikosti softwaru (původně v tisících řádků kódu – KLOC) a řady nákladových faktorů.
- **Použití:** Tradičně pro strukturované projekty.
- **Charakteristika:** V základní formě (Organic) je vhodný pro menší, jednoduché projekty, kde má tým dostatek předchozích zkušeností a odhaduje se poměrně snadno.

### 2. Karnerova metoda (Use Case Points – UCP)
Metoda, kterou v roce 1993 navrhl Gustav Karner. Odhaduje pracnost na základě složitosti případů užití (use cases).
- **Princip:** Počítá aktéry a případy užití, rozděluje je podle složitosti (jednoduchý, střední, složitý) a přiřazuje jim váhy. Výsledný odhad se dále upravuje pomocí technických a environmentálních faktorů prostředí.
- **Použití:** Vhodné pro objektově orientované projekty s dobře zpracovanou analýzou.
- **Charakteristika:** Poskytuje přesnější a detailnější odhad, ale je náročnější na vstupní data analýzy.

##  Související témata
- [[Plánování softwarových projektů]] – Odhady nákladů jsou klíčovým vstupem pro plánování.
- [[Analýza požadavků]] a [[Objektová analýza a UML]] – Karnerova metoda přímo vychází z případů užití (Use Cases) definovaných během analýzy.
