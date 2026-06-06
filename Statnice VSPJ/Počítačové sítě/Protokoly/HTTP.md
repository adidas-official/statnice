Hyper-Text Transfer Protocol.
- Protokol pro komunikaci s web servery
- Založen na principu Dotaz/Odpověď
- Standardně na portu 80, zabezpečená verze HTTPS na 443
# Metody
- GET - pro požadavek na stažení nějakého zdroje, např.: [[www stránky|webové stránky]]
- POST - posílám data, není v [[URL]], ale parametry jsou v těle požadavku
- DELETE - požadavek pro smazání, většinou pouze pro [[API]]
- PUT - update dat, také spíš pro API
- TRACE - ladící, vrací v odpovědi parametry a hlavičky požadavku
- OPTIONS - nevrací content, pouze seznam povolených metod
# Kódy odpovědí
- 2xx - v pořádku, přijato
- 3xx - redirect na jinou [[IP adresa|IP adresu]] nebo doménu, přepošle požadavek
- 4xx - chyba na straně uživatele, překlep, špatný požadavek, špatná metoda, není autorizován
- 5xx - chyba na straně serveru, uživatel ok, server nedokázal validní požadavek zpracovat, není dostupný atd.
# Hlavičky
Headers dále specifikují, co má server udělat nebo co očekávat. Nejčastěji používané hlavičky:
- Content-Length - U POST metody udává počet bajtů, které jsou jeden request
- Content-Type - MIME typ media
- Authorization - slouží pro autorizaci pomocí tokenu nebo hesla (basic je v b64 ve formátu username:password)
- Encoding - kódování a komprese
- Cookie

---
Zpět na [[Mapa protokolů]]