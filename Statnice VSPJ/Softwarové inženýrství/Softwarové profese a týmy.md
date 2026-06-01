---
tags: [software-engineering, teams, agile, project-management]
---
# Softwarové profese a týmy

Složení vývojového týmu a konkrétní pracovní role se výrazně liší v závislosti na zvolené metodice vývoje softwaru.

## Role v tradičních metodikách (Vodopád a RUP)
V robustních metodikách, jako je [[Softwarový proces#1. Vodopádový model (Waterfall)|vodopád]] nebo [[Softwarový proces#3. Unifikovaný proces (Unified Process – UP / RUP)|RUP]], jsou role striktně oddělené a specializované:

- **Projektový manažer (Project Manager):** Nese celkovou zodpovědnost za úspěšné dokončení projektu. Plánuje harmonogramy, alokuje zdroje, hlídá rozpočet a dohlíží na dodržování metodiky.
- **Business analytik (Business Analyst):** Zajišťuje komunikaci se zadavatelem. Sbírá, analyzuje a specifikuje požadavky, které následně v srozumitelné formě předává zbytku týmu.
- **Softwarový architekt (Software Architect):** Navrhuje celkové technické řešení a strukturu systému (architekturu), rozhoduje o technologiích a návrhových vzorech.
- **Vývojář (Developer):** Implementuje (píše) kód aplikace na základě technického návrhu a specifikací od architekta a analytika.
- **Tester (QA Engineer):** Ověřuje, zda výsledný software odpovídá zadání klienta a zda neobsahuje chyby. Navrhuje a provádí testovací scénáře.

---

## Role v agilním vývoji

### 1. Scrum
V rámci metodiky Scrum se pracuje v menších, samoorganizovaných týmech (typicky do 7–9 lidí). Jsou zde definovány pouze 3 klíčové role:

- **Product Owner (Vlastník produktu):** Zastupuje zájmy zákazníka a koncových uživatelů. Je přímou součástí týmu. Spravuje produktový backlog, prioritizuje úkoly a určuje, které funkce mají pro byznys největší přínos a budou se vyvíjet nejdříve.
- **Scrum Master:** Funguje jako kouč a facilitátor týmu. Pomáhá odstraňovat překážky v práci, chrání tým před vnějšími vlivy a dohlíží na správné pochopení a dodržování principů Scrumu. Není to manažer týmu, ale spíše služebník (servant leader).
- **Vývojový tým (Development Team):** Multidisciplinární skupina odborníků (programátoři, testeři, designéři), která společně realizuje vybrané úkoly ze sprintu. Tým je autonomní – sám si plánuje a určuje, kolik práce je schopen během sprintu reálně zvládnout.

### 2. Extrémní programování (XP)
V extrémním programování se uplatňují specifické sociálně-technické role a praktiky:
- **Párové programování:** Dva vývojáři sdílejí jedno pracovní místo (jeden píše kód, druhý jej průběžně reviduje).
- **Rotace rolí a sdílené vlastnictví kódu:** Kdokoli z týmu může upravit jakoukoli část kódu, čímž se předchází vzniku "ostrovů znalostí".
- **Zákazník v týmu (On-site Customer):** Zástupce zákazníka je fyzicky přítomen přímo v kanceláři týmu a je okamžitě k dispozici pro zodpovězení dotazů a upřesnění požadavků.

### 3. Kanban
Na rozdíl od Scrumu zde role nejsou striktně předepsané. Tým se zaměřuje na vizualizaci toku práce pomocí Kanban tabule. Členové týmu si sami odebírají úkoly z tabule podle aktuální kapacity a limitů rozpracované práce (WIP – Work in Progress).

## Související témata
- [[Softwarový proces]] – Metodické rámce, které určují chování a interakci těchto rolí.
- [[Analýza požadavků]] – Klíčová činnost zejména pro Business analytiky a Product ownery.
