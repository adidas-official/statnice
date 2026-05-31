Souhrn pravidel, postupů a doporučení, kdy má kdo co během vývoje dělat. Je to metodika pro vývoj softwarového projektu.
# Modely
Základní modely se dělí na tyto kategorie
## Vodopád
Jednotlivé fáze projektu (analýza požadavků, návrh, implementace, testování, nasazení a údržba) na sebe navazují. Další fáze začne až potom, co předchozí skončila. Je obtížné a nákladné se k ní znovu vracet. Vhodné pro projekty, které mají pevně definované požadavky, které se během projektu nemění.
## Agilní vývoj
Během vývoje se mohou vyskytnout problémy a Vodopád se s nimi může jen obtížně potýkat. Pro projekty, kde není pevně daná struktura vývoje je vhodné použít iterativní agilní vývoj. Pracuje se v iteracích, kterým se říká sprinty. Před zahájením sprintu se uspořádá scrum call - pravidelný meeting členů týmu, kde se probere, co se povedlo, co je potřeba udělat dále, kde se někdo zasekl atd. Definují se cíle sprintu (například, místo jQuery nasadíme Vue.js a na backendu zmigrujeme databázi. Přídáme možnost přihlášení pomocí SSO, ...). Sprint se ukončí třeba za 2 týdny a zhodnotí se výsledky.
V agilním vývoji se více komunikuje se zadavatelem, požadavky se mohou neustále měnit. Zadavatel si otestuje nové funkcionality, vyjádří se k nim, zadá nové požadavky, atd.
Do agilního vývoje patří metody Kanban - plynulý tok práce - a extrémní programování - programování ve dvojcích, kde dva programátoři pracují na jednom stroji, jeden píše, radí se mezi sebou, kontrolují se. Velice náročné, musí se dbát na to, aby se nedělalo přes čas. Max 40 hodin týdně. Patří sem i testy řízený vývoj. Vychází z manifestu o
## Unifikovaný proces
Jedná se o proces, který je řízen riziky. Hlavně RUP. Dbá se na to, aby se implementovaly a testovaly nejtěžší věci nejdřív, aby později nepřekvapily. Stejně jako u agilního vývoje, se pracuje v iteracích. Na konci iterace by měl být malý, ale spustitelný kód, který se může prezentovat zákazníkovi.