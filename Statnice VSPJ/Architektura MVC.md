Kód je rozdělen mezi tři celky - Model View Controller
# Model
Zpracovává logiku, data ze vstupu a provádí validaci. O výstupu neví nic. Vytváří spojení s databází a stará se o zpracování vybraných dat.
# View
Do připravených šablon vkládá data, která mu předal Controller. Obsahuje jen minimum logiky. Šablony mají placeholder pole, do kterých jsou data doplňována.
# Controller
Prostředník mezi Modelem a View. Přijímá data od uživatele a předává data z Modelu do View. Předává data mezi uživatelem do Modelu, Model je zpracovává, komunikuje s databází, výstup předává zpět kontroleru a ten je předává View, který data zadává do šablon.