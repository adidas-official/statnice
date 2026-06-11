Unikátní identifikátor zařízení v rámci jedné sítě. Dvě zařízení nesmí mít stejnou IP adresu v jedné síti, jinak bude komunikace selhávat.
# Verze IPv4
Zapisuje se jako čtyři čísla od 1-255 oddělená tečkou (32 bitů). Pro odlišení, co je adresa sítě a co je adresa zařízení se používá [[Maska sítě]].  
## Routované a neroutované IP adresy
Neroutované adresy jsou sítě rezervované pro lokální sítě.
Třída A - `10.0.0.0/24`
Třída B - `192.168.0.0/16`
Třída C - `172.16.0.0/12`
# Verze IPv6
Nástupce IPv4, kvůli nedostatku možných adres. Problém s nedostatkem se podařilo vyřešit díky [[NAT]], ale IPv6 se i tak uchytila a používá se. Obsahuje některé bezpečnostní prvky jako  [[IPsec]] nebo [[Path MTU Discovery]]. Každá IPv6 adresa na světě může být unikátní a není potřeba NAT, zařízení spolu mohou komunikovat přímo s použitím jejich veřejných IPv6 adres.