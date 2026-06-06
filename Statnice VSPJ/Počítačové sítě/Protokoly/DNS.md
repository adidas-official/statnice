Domain Name Service
Překlad doménových jmen na [[IP adresa|IP adresy]]. 
# Autoritativní server
Obsahuje zónové soubory s IP adresami serverů ve své [[Doména|doméně]]. Poskytují na vyžádání záznamy typu:
- A (IPv4)
- AAAA (IPv6)
- TXT (Textový záznam, používá se pro [[SMTP#DKIM|DKIM]])
- MX (IP adresa mailového serveru)
- CNAME (Canonical name - Alias domény, jiné jméno domény, na kterou se má ptát)
- NULL (bez hodnoty)
# DNS resolver
Vyhledává za klienta IP adresu serveru, se kterým se chce spojit. Kontaktuje DNS servery než najde ten správný.
# Proces hledání
1. Klient se chce spojit s www.csirt.cz. 
2. Zeptá se svého resolveru, jestli nemá IP adresu
3. Pokud resolver adresu nezná (není v cache), začne se ptát (posílá DNS Query)
4. Zeptá se jednoho z kořenových root DNS serverů, kdo je autoritativní server pro .cz doménu
5. Root server odpoví, že je to (třeba) IP adresa 217.31.200.201
6. Resolver se zeptá serveru na této adrese, kdo je autoritativní server pro csirt.cz. 
7. 217.31.200.201 mu odpoví, že je to 231.28.45.3
8. Resolver pošle DNS Query tomuto serveru s dotazem "A record for www.csirt.cz"
9. Server odpoví, že je to 231.28.46.88
10. Resolver doručí odpověď v sekci ANSWER s polem AUTHORITATIVE: A = 231.28.46.88
11. Klient zná IP adresu

---
Zpět na [[Mapa protokolů]]