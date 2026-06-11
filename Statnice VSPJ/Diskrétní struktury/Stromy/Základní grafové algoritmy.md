# Prohledávání
Prohledání grafu znamená hledání hodnoty ve větvích grafu. Graf můžeme prohledávat dvěma způsoby:
## do šířky
## do hloubky
# Určení minimální kostry
# Huffmanův kód
# Dijkstrův algoritmus
Hledání nejkratší cesty mezi dvěma body v grafu. Nejjednodušší algoritmus, který se stále používá. Nevýhoda je, že prohledává všechny body, i ty, které se od cíle vzdalují.
## Popis algoritmu
1. Na každou hranu grafu se zapíše váha (jak je hrana dlouhá)
2. Sousedům bodu se spočítá, jak je daleko od počátečního bodu
3. Až se prohledají všichni sousedi, prohledá se každý jejich soused atd až do cíle.
4. Nejkratší cesta bude nejmenší číslo.