---
tags:
  - algoritmus
  - řazení
name: Řazení zaměňováním
---
![[Pasted image 20260530122142.png]]
Zdroj: [Hackerearth.com](https://www.hackerearth.com/practice/algorithms/sorting/bubble-sort/tutorial/)
# Popis
Opakované porovnávání sousedních prvků a jejich zaměňování. Největší nezpracovaný prvek na konci každého průchodu "probublá" na konec pole. 

--- 
# Implementace
```C
void bubble_sort( int A[ ], int n ) {
    int temp;
    for(int k = 0; k< n-1; k++) {
        // (n-k-1) is for ignoring comparisons of elements which have already been compared in earlier iterations

        for(int i = 0; i < n-k-1; i++) {
            if(A[ i ] > A[ i+1] ) {
                // here swapping of positions is being done.
                temp = A[ i ];
                A[ i ] = A[ i+1 ];
                A[ i + 1] = temp;
            }
        }
    }
}
```

--- 
# Časová složitost
O (n²)

---

Zpět na [[Algoritmy řazení]]