# Definice
- První "L" značí, že parser čte zleva do prava
- Druhé "L" značí, že parser sleduje nejlevější znak (Left most derivation)
# Co jsou LL(k) parsery
Sledují prvních "k" znaků zleva a staví [[syntaktický strom]] ze shora dolů
Čte "k" prvních znaků a testuje, jestli lze z derivovaných terminálů složit vzor z [[Regulární výrazy|regulárního výrazu]]
Jsou jednodušší než LR parsery a je možné je napsat ručně. Hodí se pro jazyky nebo struktury jako JSON apod.
# Zacyklení
LL parsery se mohou zacyklit, pokud obsahují levou rekurzi. To je stav, ve kterém první neterminál z výrazu je ten stejný neterminál.
Například, pokud máme gramatiku:
```
S = A | B
A = Aa | cd 
```
potom se strom bude rozvíjet do nekonečna směrem doleva. Neterminál "A" musíme vždy nejdřív rozložit na "Aa" nebo "cd", ale v první větvi znovu narazíme na "A" a ten se musí znovu rozložit a tak pořád dokola do nekonečna. 
Levou rekurzi je potřeba eliminovat a použít zástupný znak. Tím se neterminál přenese do prava a rozklad může pokračovat.
```
S = A | B
A = A' | cd
A' = a | epsilon
```

---
Zpět na [[Bezkontextové jazyky]]