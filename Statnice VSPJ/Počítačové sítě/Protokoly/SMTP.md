Simple Mail Transfer Protocol
Protokol pro posílání emailů z jednoho stroje na druhý. Neobsahuje žádné bezpečnostní prvky. Pochází z doby, kdy na internetu byli jen vědci a důvěřovali si. Kdokoliv mohl poslat mail a zfalšovat pole FROM.
# Synchronizace
Pro synchronizaci schránky uživatele se serverem se používají protokoly:
- [[IMAP]]
- [[POP3]]
# Bezpečnost
V posledních letech byly do SMTP implementovány bezpečnostní mechanismy:
## SPF
Sender Policy Framework.
Seznam [[IP adresa|IP adres]], které mohou z domény email posílat.
## DKIM
Zajišťuje integritu zpráv. Servery s implementovaným DKIM podepisují svým soukromým klíčem každý email, který odešle. Přijemce si potom může podpis ověřit pomocí veřejného klíče serveru.
## DMARC
Definuje, co se se zprávou stane, pokud SPF nebo DKIM neprojde. Jestli se zahodí, hodí do spam složky nebo se doručí.

---
Zpět na [[Mapa protokolů]]