File Transfer Protocol.
Protokol pro přenos souborů. Používá dva kanály
- Datový (port 20): Samotný přenos dat
- Komunikační (port 21): Slouží ke komunikace před a po transferu souboru.
# Módy
Rozdíl je v tom, kdo otevírá datový kanál - buď klient (aktivní) nebo server (pasivní)
## Aktivní
Dnes se už moc nepoužívá. Komunikace probíhá takto:
- Klient se připojí na port 21 serveru
- Nabídne svůj port (třeba 4320) jako datový kanál
- Server odpoví, že pošle soubor na tento port
- Naváže spojení na port 4230 a pošle soubor
- Ukončí spojení na portu 4230
Problém je v tom, že otevření portu na straně klienta pro [[Firewall]] vypadá jako útok zvenčí a transfer často zablokuje.
## Pasivní
- Klient se připojí na port 21 serveru
- Server navrhne, že jako datový kanál použije svůj port (třeba 53292)
- Klient naváže spojení se serverem na portu 53292 a stáhne si soubor
- Ukončí spojení na portu

---
Zpět na [[Mapa protokolů]]