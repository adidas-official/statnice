![[Pasted image 20260528215707.png]]
# Co jsou certifikáty a proč je používáme
**Zajišťují integritu zpráv:**
1. Odesílatel vytvoří digitální podpis. Svým privátním klíčem hash zprávy zašifruje, výsledný řetězec připojí ke zprávě.
2. Příjemce potom pro dešifrování použije veřejný klíč odesílatele, vyjde mu hash zprávy.
3. Z přijaté zprávy potom sám vytvoří hash a porovná, jestli jsou hashe stejné.
# Certifikační autority (CA)
- CA je důvěryhodná strana, která garantuje, že použitý certifikát skutečně patří tomu, kdo ho použil.
- Z českých je to například [PostSignum](https://www.postsignum.cz//) od České pošty.