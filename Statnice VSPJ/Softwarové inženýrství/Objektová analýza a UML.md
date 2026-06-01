---
tags: [software-engineering, uml, analysis, design]
---
# Objektová analýza a UML

**Objektová analýza** je proces zaměřený na pochopení domény a definování požadavků na systém z pohledu objektů. Během analýzy identifikujeme reálné objekty v systému, jejich vlastnosti, chování a vzájemné vztahy. Definuje se tím rozsah systému, jeho hranice, klíčoví aktéři a jejich případy užití (use cases).

**UML (Unified Modeling Language)** je standardizovaný grafický jazyk používaný k vizualizaci, specifikaci, navrhování a dokumentování softwarových systémů. Slouží jako grafické znázornění objektové analýzy a návrhu.

![[Pasted image 20260601223830.png]]

---

##  Rozdělení UML diagramů

UML diagramy se dělí do dvou hlavních kategorií podle toho, jaký aspekt systému popisují:
### 1. Strukturální diagramy (Structural Diagrams)
Popisují statickou strukturu systému – z jakých částí se systém skládá a jaké jsou mezi nimi statické vazby.

- **Diagram tříd (Class Diagram):** Nejpoužívanější diagram, který zobrazuje třídy v systému, jejich atributy (data), metody (chování) a vzájemné vztahy (asociace, dědičnost, agregace apod.).
  ![[Pasted image 20260601230456.png]]
- **Diagram komponent (Component Diagram):** Zobrazuje fyzické nebo logické rozložení softwarových komponent a jejich závislostí.
- **Diagram nasazení (Deployment Diagram):** Ukazuje fyzické uspořádání hardwarových uzlů (např. servery, klientské stanice) a to, jaké softwarové komponenty jsou na nich nasazeny.
  ![[Pasted image 20260601230556.png]]

### 2. Behaviorální diagramy (Behavioral Diagrams)
Popisují chování systému v čase – jak systém reaguje na podněty a jak spolu jednotlivé prvky komunikují.

- **Diagram případů užití (Use Case Diagram):** Vymezuje hranice systému, identifikuje **aktéry** (uživatele nebo jiné systémy) a ukazuje **funkce (případy užití)**, které tito aktéři se systémem provádějí.
- **Sekvenční diagram (Sequence Diagram):** Interakční diagram, který se zaměřuje na výměnu zpráv mezi objekty v čase. Velmi užitečný pro modelování konkrétních scénářů případů užití.
- **Stavový diagram (State Machine Diagram):** Popisuje životní cyklus jednoho objektu – jeho možné stavy, události, které způsobují přechod mezi stavy, a akce, které se při přechodech provádějí.

---

##  Související témata
- [[Analýza požadavků]] – Objektová analýza (zejména diagramy případů užití) je klíčovým nástrojem pro specifikaci požadavků.
- [[Softwarový proces]] – UML diagramy se vytvářejí v analytických a návrhových fázích vývojového cyklu (např. v Elaboraci unifikovaného procesu).
