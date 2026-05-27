Konkrétní datová struktura. Je realizován pomocí [[ukazatel|ukazatelů]]. Každý prvek obsahuje hodnotu a ukazatel na adresu v paměti, kde je uložen další prvek. Nemusí být v paměti za sebou. 
![[Pasted image 20260525220233.png]]
Poslední položka ukazuje na NULL. Výhodou je snadná rozšířitelnost. Na nový prvek se jen přidá ukazatel. Adresa v paměti spojového seznamu je adresa prvního prvku.
Existuje i [[Dvousměrný spojový seznam]], který má i ukazatel na př