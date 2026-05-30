Systém ukáže na správné místě v paměti.
# Přímý přístup
**Klíč** pro vyhledání je **index** v [[Datová struktura|datové struktuře]].
[[Časová složitost]] je **O(1)**, přístup k prvku je **okamžitý**.
**Nevýhodou** jsou velké požadavky na paměť
Například, když je klíč rodné číslo nebo IČO a někdo má identifikátor 999 999 999, pole musí mít přesně tolik prvků (minimálně 1 miliarda). 
# Hashing (rozptylování)
Řeší problém přímého přístupu požadavků na paměť.
Většinou se používá modulu.
## Příklad se zaměstnanci:
- Máme 50 zaměstnanců s 9 místním ID.
- Vytvoříme pole o délce 100 prvků. 
- Zaměstnanec s ID 993 817 302 bude mít index ve poli 993 817 302 mod 100 = 2
- Zaměstnanec s ID 731 932 041 bude mít index ve poli 731 932 041 mod 100 = 41
## Kolize
Vznik kolizí je u hashingu nevyhnutelný - některé hodnoty budou generovat stejný index. V případě, že budeme mít dva zaměstnance, kterým vyjde stejné modulu, například 42. Kolize se řeší dvěma způsoby:
### Zřetězení
Na indexu nejsou uložena přímo data, ale ukazatel na [[spojový seznam]]. Prohledávání potom probíhá sekvenčním prohledáváním spojového seznamu na daném indexu.
**Výhoda** je, že tabulka se nikdy nezaplní. Může obsahovat dlouhé seznamy. 
**Nevýhodou** je zase, že pokud bude tabulka generovat příliš mnoho stejných indexů, budeme prohledávat dlouhý sekvenční seznam.  
### Otevřené rozptylování
Všechny prvky zůstávají ve stejném seznamu. Pokud dojde ke kolizi, pomocí pravidel se vybere jiný index ve stejném seznamu. 
#### Metody hledání volného místa
- Lineární přidružování: Když je index zaplněný, program zkusí index+1, potom +2 atd. Mohou se vyskytovat velké shluky, které musí program přeskakovat po jednom.
- Kvadratické přidružování: Podobné, ale místo +1 se hledá na indexu +1², potom +2² atd
- Dvojité rozptylování: Zkusí se hashovat podle jiného modula, například ke kolizi došlo při mod 100, zkusí se mod 7