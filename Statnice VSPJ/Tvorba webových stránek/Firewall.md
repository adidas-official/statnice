Zařízení nebo program, který obsahuje pravidla, na základě kterých packety propouští nebo zahazuje. Pravidla mají tvar:
- Zdrojová a cílová [[IP adresa]] 
- [[Mapa protokolů|Protokol]]
- Zdrojový a cílový port
- Směr (INPUT, OUTPUT, FORWARD)
- Co s paketem dělat (DROP, ACCEPT)
FW neprování inspekci samotného packetu. Pokud splňuje podmínky pro ACCEPT, bude propuštěn skrz, i kdyby se jednalo o útok.