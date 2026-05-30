Data se tak dlouho porovnávají s hledaným výrazem, až dojde ke shodě.
# Sekvenční vyhledávání
**Nejjednodušší** možné vyhledávání. Prochází se prvek po prvku, dokud se nenajde shoda s hledaným výrazem.
**Nejméně efektivní**, protože algoritmus musí projít celý seznam, dokud nenajde shodu.
**[[Časová složitost]]** sekvenčního vyhledávání je v nejhorším případě O(n)
# Binární přístup
Vyhledávání za použití:
- [[Binární vyhledávací strom|binárních vyhledávacích stromů]] - data jsou uložena v uzlech dynamicky, prohledávání probíhá procházením přes ukazatele od kořene dolů k větvím.
- binárním půlením - prohledávání sekvenčního seřazeného pole. Algoritmus najde prostřední index úseku a porovná.

U obou případech v každém kroku vyloučíme polovinu možností, dokud nenajdeme hledanou hodnotu. **[[Časová složitost]]**  O(log n). 