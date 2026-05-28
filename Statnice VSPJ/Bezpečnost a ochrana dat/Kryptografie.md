Zpráva je přenášena nezabezpečeným mediem (přes internet, signál může kdokoliv zachytit a odposlechnout). Aby nedošlo k prozrazení, zpráva je zašifrována, její obsah je pozměněn a bez klíče není pro příjemce srozumitelný.

**Kershofůf princip v kryptografii** - Bezpečnost šifry závisí na utajení klíče, nikoliv na utajení algoritmy.

---
# Typy šifrování:
- **Symetrické** – pro šifrování i dešifrování se používá stejný klíč. Je to rychlé a výpočetně méně náročné, ale v případě zcizení nebo prolomení klíče hrozí, že zpráva zachycená bude přečtena.
- **Asymetrické** – používá se koncept dvou klíčů - veřejný a soukromý. Veřejný klíč je matematicky odvozen od soukromého. Pro šifrování se použije veřejný klíč příjemce a pro dešifrování příjemce použije svůj soukromý klíč. Příklady asymetrických šifer:
	- RSA – První šifra, která tento koncept úspěšně použila.
	- ECC – Kryptografie nad eliptickými křivkami. Zajišťuje stejnou bezpečnost jako RSA, ale s mnohem kratšími klíči.
	- EIGamal – Šifrovaná data jsou dvakrát delší než šifrovaný text.
- **Hybridní** – Spojení bezpečnosti asymetrických a rychlosti symetrických šifer. Zpráva se zašifruje pomocí symetrického šifrovacího algoritmu, klíč se zašifruje pomocí RSA nebo ECC a pošle se příjemci.

---
# Druhy šifer:
## Substituční
- Nahrazení písmene jiným písmenem podle pravidel.
- Příklad: Césarova šifra, Vigenèrova šifra
## Transpoziční
- Prohození pořadí písmen (přesmyčky)
- Příklad: Sloupcová transpozice, mřížka, 
## Proudové šifry
- Šifrování zpráv o předem neznámé délce.
- Vytvoří se nekonečný proud binárních dat (klíč), šifruje se XOR operací bit po bitu.
- Vernamova šifra: neprolomitelná, klíč je stejně dlouhý jako samotná zpráva a je použit pouze jednou (kvůli kryptoanalýze). Klíč je dokonale náhodný.
- Příklady: [[RC4]], [[A5]]
## Blokové šifry
- Zpráva se rozdělí na bloky stejné délky, šifruje se vždy celý blok.
- Zašifrované bloky se přidávají za sebe.
- **Příklady:** [[AES]], [[DES]], [[Triple DES]].

--- 
# Kvantová kryptografie
Shorův algoritmus, představený v roce 1994, prokázal, že kvantové počítače budou schopny v principu prolomit asymetrickou kryptografii RSA pomocí efektivní faktorizace velkých celých čísel. Z tohoto důvodu některé vládní organizace a další subjekty již v současnosti aplikují strategii známou pod názvem _Store now, decrypt later_ (Ulož nyní, dešifruj později).

Tento postup spočívá ve shromažďování a archivaci šifrovaných dat, přestože je současné technologie nedokážou prolomit. Jakmile budou k dispozici dostatečně výkonné kvantové počítače, tyto subjekty archivované zprávy zpětně dešifrují. Vzhledem k tomu, že citlivost a relevance některých informací přetrvává po celá desetiletí, představuje tato strategie dlouhodobé bezpečnostní riziko.
## tldr;
- Shorův algoritmus z roku 1994 ukázal, že kvantové počítače by v principu mohly prolomit RSA faktorizaci.
- Některé vlády a entity proto aplikují proces _Store now, decrypt later_.
- Dnes zašifrované zprávy shromažďují, i když je nedokáží rozluštit. Až budou mít k dispozici kvantový počítač, mohou zprávy dešifrovat.
- Některá data zůstávají relevantní po desetiletí, proto se vyplatí počkat.

--- 
# Odolnost proti nalezení vzoru a druhého vzoru
1. Hledám zprávu jen na základě jejího hashe → hledám **vzor** (Preimage).
2. Mám zprávu a hledám k ní jinou se stejným hashem → hledám **druhý vzor** (Second preimage).
3. Hledám jakékoliv dvě náhodné zprávy, které budou mít stejný hash → hledám **kolizi** (Collision).