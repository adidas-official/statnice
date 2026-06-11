Je to vztah mezi objekty prvky [[Diskrétní struktury/Množiny/Množina|množin]]. Relace **R** z množiny **A** do množiny **B** je libovolná podmnožina jejich Kartézského součinu. Zobrazují se pomocí:
- Šipek
- Tabulky
- Matice
Příklad relace:
```
A = (-inf; inf)
B = (0; inf)
|
+-> (x; y) ∊ R <=> y = 2^x
```
Množina A jsou Reálná čísla a množina B jsou kladná Reálná čísla. Prvky množiny A jsou v Relaci s prvky množiny B, pokud prvek z druhé množiny je 2 na mocninu prvku z první množiny.
# Inverzní relace
Relace u které je prohozené pořadí prvků v uspořádané dvojici.
Příklad: Relace "Je rodičem" -> Petr je rodičem Karla, potom Karel je dítětem Petra
# Operace s relacemi
- Složení
# Relace na množině
Vztahy mezi stejnými prvky.
Příklad: Množina všech měst. Města jsou spolu v relaci R, pokud je mezi nimi přímá cesta
## Vlastnosti
Umožňuje klasifikovat relace do tříd. Třídy nám mohou pomoci například při návrhu a optimalizaci [[Definice databázového systému|databází]].
### Třídy relací
- **Reflexivita**: Prvek je v relaci sám se sebou. Příklad: Každé číslo je dělitelné samo sebou nebo zákazníci ve stejném městě.
- **Symetrie**: Pokud je prvek **a** v relaci s prvkem **b**, pak prvek **b** je v relaci s prvkem **a**. Příklad: Je sourozencem - Pepa je bratr Jana, Jan je bratrem Pepy.
- **Tranzitivita**: Pokud je prvek **a** ve vztahu s prvkem **b** a prvek **b** je ve vztahu s prvkem **c**, pak prvek **a** je také ve vztahu s prvkem **c**. Příklad: Pokud je číslo 5 větší než číslo 4 a číslo 4 je větší než číslo 1, pak číslo 5 je také větší než číslo 1
## Ekvivalence
Prvky v relaci jsou ekvivalentní, pokud splňují podmínky:
- Reflexivity
- Symetrie
- Tranzitivita
## Uspořádání
Relace, která dovoluje prvky nějaké množiny seřadit podle nějakého kritéria.
Může jít o ostré nebo neostré uspořádání. V obou případech musí prvky relace splňovat **reflexivitu** a **tranzitivitu**, v **ostrém** reflexivní **jsou**, v **neostrém** reflexivní **nejsou**
## Zobrazení
Každému prvku z jedné množiny (Definiční obor) přiřazujeme právě jeden prvek z druhé množiny (Obor hodnot).
![[Pasted image 20260610112910.png|391]]
### Identita
Každý prvek se zobrazí sám na sebe
![[Pasted image 20260610115348.png]]
### Injektivní (prosté)
Každý prvek z D je zobrazen maximálně na jeden prvek H (Od každého prvku z D jde šipka)
![[Pasted image 20260610115431.png]]
### Surjektivní
Každý obraz má minimálně jeden vzor. (Na každý prvek z H jde aspoň jedna šipka)
![[Pasted image 20260610115456.png]]
### Bijektivní
Je zároveň injektivní i surjektivní. Každý vzor má různý obraz a každý obraz má nějaký vzor. (Na žádné straně nezůstane bod ze nebo do kterého nejde šipka)
![[Pasted image 20260610115510.png]]