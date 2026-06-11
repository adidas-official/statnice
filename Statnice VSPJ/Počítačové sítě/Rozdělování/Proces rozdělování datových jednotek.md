# Proč se data rozdělují
Sítě mají omezený počet bitů, které dovedou přenést najednou. Když přenášíme velký soubor a dojde k výpadku, celé stahování by muselo začít znova. Menší kousky dat také méně zatěžují síť. Z toho důvodu se data rozdělují na menší kusy, které se lépe přenášejí
# Příklad
1. **Data:** Napíšeš dlouhý dopis (např. knihu).
2. **[[Segment|Segment (TCP)]]:** Kniha je moc tlustá, tak ji rozstříháš na jednotlivé kapitoly a na každou napíšeš číslo kapitoly, aby šla složit (**číslo portu a sekvence**).
3. **[[IP Paket|Paket (IP)]]:** Každou kapitolu vložíš do obálky a napíšeš na ni ulici a město odesílatele a příjemce (**IP adresy**).
4. **[[Datový rámec|Datový rámec (Ethernet)]]:** Aby dopis mohl jet poštovním autem, vloží se obálka do přepravního plastového boxu, kde je napsaný čárový kód depa a cílové pošty (**MAC adresy**) a plomba proti otevření (**Checksum**).
    
5. **Fragment:** Pokud se na poště zjistí, že se box nevejde do malého doručovacího auta, pošťák krabici otevře, dopis rozdělí na dvě půlky a každou pošle zvlášť.
