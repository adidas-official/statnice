
**Buffer overflow** – Jde o anomálii, kdy proces uloží data do části paměti, která pro to nebyla programátorem vyhrazena.
- Stack overflow: utok na zasobnik, prepsani navratovou adresu funkce, procesor skoci na vlastni skodlivy kod
- heap overflow: utok na haldu (dynamicky alokovana pamet).
**Code/command injection** – Vznika po nedostatecne sanitaci vstupnich poli. Utocnik se snazi pres vstupni pole vpasovat data, ktera program chape jako instrukce. SQL injection, xss, code injection.