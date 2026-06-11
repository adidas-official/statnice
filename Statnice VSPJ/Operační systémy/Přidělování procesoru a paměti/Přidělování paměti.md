Modul, který paměť  je eviduje **MMU** - Memory Management Unit. Stará se o evidenci volného a obsazeného místa v paměti.
Každému procesu je alokována (přiřazena) paměť, kterou může využít pro své potřeby. Kam zapisuje mezivýsledky operací atd. 
Dělí se na:
# Kontinuální
Dnes se už nepoužívá. Alokace paměti probíhala pomocí metod:
- First fit - První dostatečně dlouhý souvislý blok paměti byl využit. Nejrychlejší metoda, ale zanechává nevyužitá malá místa paměti, do kterých se pravděpodobně nebude moci nic zapsat.
- Best fit - Pomalejší. Hledá se v celé paměti souvislý blok, který velikostně nejlépe odpovídá potřebné paměti pro proces
- Worst fit - Záměrně se vybere největší kus paměti a obsadí se. Zbude pořád velký kus, který bude moci využít jiný proces
# Nekontinuální
Používaný dnes. Řeší pomocí **stránkování** a **virtuální paměti** nedostatek místa v paměti.
- **Stránkování** - Paměť se pomocí [[Spojový seznam|spojového seznamu]] vytvoří bloky - stránky. Stránky se potom zaplňují postupně. Ve fyzické paměti jsou to rámce, ve virtuální paměti stránky. Adresy stránek se zapisují do stránkovací tabulky. Vzniká problém s vnitřní fragmentací - nevyužité místo na konci stránky přidělené procesu. 
- **Stránkování na žádost** - Lze využít více paměti, než kolik je na systému k dispozici. Stránky se rozdělí podle určení (logické, datové,...) a vyžádají se jen v případě, že je bude proces zrovna potřebovat. Ostatní jsou na swapu na pevném disku. Stránka je načtena do fyzické paměti až v okamžiku. kdy na ní proces poprvé ukáže. Pokud stránka není načtená, vyvolá se chyba "výpadek stránky" a hardware proces přeruší a jádro OS se pokusí načíst potřebnou stránku z disku.
# Metody ochrany paměti
- **Metoda zámků a klíčů** - Každý blok paměti má číselný zámek a běžící proces musí znát jeho klíč (musí ho mít v registru)
# Ostatní pojmy
- Trashing - Procesor tráví většinu času hledáním stránek. Nastávám když je nedostatečná fyzická paměť.
- Copy-on-write - Umožňuje procesům sdílet stejné rámce fyzické paměti, dokud jeden z nich nechce data změnit.
- Pracovní množina - Množina stánek, ke kterým proces v poslední době přistupoval. Jeho "oblíbené" stránky. Jsou v RAM, protože je proces používá nejvíce.
- Zloděj stránek - Systémový proces, který uvolňuje málo využívané rámce paměti pro potřeby budoucích procesů.
- Zombie proces - Proces skončil, ale je stále v paměti, aby jeho rodič mohl přečíst jeho návratový kód.
- Panenská stránka - Stránka, která byla pro proces vytvořena, ale proces k ní ještě nepřistoupil.