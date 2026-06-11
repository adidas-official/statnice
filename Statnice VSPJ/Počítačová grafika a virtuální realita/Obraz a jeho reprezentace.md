- Obraz je reprezentován na obrazovce barevnými body - Pixely
- Pixel: **Pic**ture **El**ement - Zobrazovací bod na obrazovce barev [[RGB]]. Tvoří ho 3 subpixely - Červený, zelený a modrý.
# Barevné modely
## RGB
- Red - Green - Blue
- Zapisuje se v hexadecimálním řetězci `#22feba`. 22/255 červené, 254/255 zelené, 186/255 modré
- Barvy se kombinují aditivním způsobem - dohromady dávají bílou barvu
- Vhodné na web, pro digitální zobrazení
## CMYK
- Cyan - Magenta - Yellow - Black
- Zapisuje se jako 4 čísla od 0 do 100 za sebou, označující sytost jednotlivé barevné složky, oddělené lomítkem (65/28/12/90)
- Kombinace barev subtraktivním způsobem - smícháním všech dostaneme černou - odpovídá realitě na papíře
- Používá se pro tisk
# 2D grafika
## Rastrová grafika
- Obraz je složen z barevných bodů - pixelů - uspořádaných v mřížce, které mají každý svoji barvu.
- Při přiblížení se ztrácí kvalita a obraz se rozostřuje
- Jednoduchá a realistická grafika 
- Vhodné pro fotografie a fotorealistické obrazy
- Velikost obrazu je počet pixelů na šířku x počet pixelů na výšku
- Kvalita obrazu je definována pomocí PPI (Pixel per Inch) - počet pixelů v jednom palci (2,54 cm)
### Nejpoužívanější formáty
- Bitmapa - výchozí Windows formát 
- GIF - vhodné pro krátké animace
- JPEG - Pro fotorealistické obrazy. Neumí průsvitnost
- PNG - Obsahuje alfa kanál - průsvitnost (opacity)
## Vektorová grafika
- Matematicky přesná reprezentace křivek a ploch
- Používá XML syntaxi
- Křivky se definují pomocí Beziérových křivek - kontrolní a kotevní body (tvoří tečnu ke křivce)
- Vhodné na web
- Jednotlivé plochy a křivky jsou editovatelné a grafika se nerozmaže při přiblížení
- Nejsou vhodné pro fotorealistické obrazy - příliš mnoho drobných ploch, velikost souboru může překročit rastrový obrázek a kvalita bude horší, tvary budou pokřivené
# 3D grafika
## Modelování křivek ploch a těles
Modelování je proces, při kterém pomocí matematických rovnic vytváříme trojrozměrný nebo dvourozměrný objekt.
- Křivky - pomocí Beziérových křivek nebo B-Spline křivek. Používají kontrolní a kotvící body
- Plochy - NURBS (rozšíření křivek).  Umožňují modelovat téměř libovolný tvar.
- Tělesa - Polygonální sítě, složené z malých trojúhelníků nebo čtyřúhelníků. Constructive Solid Geometry (CSG) je metoda složení komplexního tvaru pomocí primitivů (koule, krychle, jehlan, válec, ...)
## Světlo ve scéně
Pro osvícení a zobrazení stínů se používá například Ray-Tracing - metoda sledování paprsků

## Zobrazovací řetězec
Jedná se o proces převodu 3D scény do 2D statického obrázku - rendering pipeline.
Má typicky celkem 6 fází:
1. Modelování - Tvorba trojrozměrné grafiky všech objektů v 3D modelovacím software.
2. Transformace - Rotace, přiblížení/oddálení, posun a jiné pozicovací operace s objekty. Umístění objektů pomocí souřadnic ve 3D prostoru.
3. Osvětlení - Vykreslení stínů a odlesků světla od objektů na základě jejich textur a vlastností povrchu, průsvitnosti atd.
4. Promítání - Převod bodů v 3D prostoru do 2D roviny
5. Rasterizace - Převod geometrických primitivů na rastrový obraz - pixely na obrazovce
6. Zobrazení - Výsledný obraz je zobrazen
