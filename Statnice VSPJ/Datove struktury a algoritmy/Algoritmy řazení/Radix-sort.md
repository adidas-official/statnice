---
tags:
  - algoritmus
  - řazení
name: Přihrádkové řazení
---
![[Pasted image 20260530123455.png]]
Zdroj: [ritambhara.in](https://ritambhara.in/blog/details/radix-sort/297)
# Popis
Jedná se o specifické algoritmy adresního řazení, při kterém se klíče vzájemně neporovnávají . Klíč tvoří posloupnost m číslic a v prvním průchodu algoritmus rozdělí prvky podle poslední číslice (nejnižšího řádu) do příslušných přihrádek (front). Následně z přihrádek vytvoří upravené pole a celý tento postup se cyklicky opakuje pro další číslice směrem doleva.

--- 
# Implementace
```C
void countSort(int *arr, int n, int placeValue)
{
    int finalArr[n]; // FINAL OUTPUT ARRAY
    int count[10] = {0}; // MAX UNIQUE = 10
    int i;
    for (i = 0; i < n; i++)
        count[(arr[i]/placeValue)%10]++;
    for (i = 1; i < 10; i++) count[i] += count[i-1]; for (i = n - 1; i >= 0; i--)
    {
        finalArr[count[(arr[i]/placeValue)%10]-1]=arr[i];
        count[(arr[i]/placeValue)%10]--;
    }
    for (i = 0; i < n; i++)
        arr[i] = finalArr[i];
}
```

--- 
# Časová složitost
O(m⋅n) a jde o stabilní metodu, vyžaduje ovšem lineární paměť navíc O(n) pro uložení front

---

Zpět na [[Algoritmy řazení]]