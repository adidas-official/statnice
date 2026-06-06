# Fáze 0 - Příprava
- Definují se cíle a rozsah projektu
- Zajistí se podpora managementu - kritický předpoklad implementace
- Sestavení týmu pro realizaci a detailní plán vývoje
- Analýza a plán na případný redesign
- Příprava dat na migraci
# Fáze 1 - Realizace
- Nasazení probíhá podle zvolené implementační strategie:
	- Velký třesk: Nasazení najednou a plošně formou ostrého řezu
	- Fázové nasazení: Projekt se nasazuje po částech, po jednotlivých modulech nebo v různých lokalitách.
	- Paralelní nasazení: Systém dočasně běží současně ve staré i nové verzi. Nákladné a obtížné pro uživatele, ale nejmenší riziko výpadku
	- Pilotní projekt: Systém se otestuje na vybrané lokalitě na plno a po důkladném otestování se zavádí plošně všude
- Úspěch fáze závisí na technických i netechnických aspektech jako:
	- Řízení změn: Změny trvají a je potřeba postupovat systematicky. Zahrnuje i komunikaci s lidmi a jejich odpor k novinkám.
	- Migrace dat: Data často musí být dostupná na dvou místech současně (starý systém a nový). Bezpečnostní riziko a riziko ztráty integrity (důležitost synchronizace pro zachování jednoznačnosti), proces [[ETL]]
	- Testování: Vše se musí vyzkoušet, že nový systém funguje. Lidé si potřebují zkusit jestli jim změny vyhovují a dávají smysl ([[UAT]])
	- Školení uživatelů: Nový systém přináší nové funkcionality a postupy, které je potřeba si osvojit 
# Fáze 2 - Po implementaci
- Podpora: Hypercare nebo Go-Live support - pomoc uživatelům na začátku
- Vyhodnocení celkové úspěšnosti projektu
- Stabilizace a optimalizace: Po spuštění budou problémy, které je potřeba adresovat
- Údržba: Systém se musí na začátku ladit a udržovat
- Rozvoj: Časem budeme chtít přidat nové moduly a funkcionality
