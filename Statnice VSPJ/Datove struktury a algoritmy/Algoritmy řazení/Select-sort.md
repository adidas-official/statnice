---
tags:
  - algoritmus
  - řazení
name: Řazení výběrem
---

![[Pasted image 20260530121705.png]]
Zdroj: [Hackerearth.com](https://www.hackerearth.com/practice/algorithms/sorting/selection-sort/tutorial/)
# Popis
Funguje na principu hledání nejmenšího prvku ve zmenšujícím se poli.
Prohledá se celé pole a vybere se nejmenší prvek. Z pole se vyjme a přidá se do nového pole. Prohledá se zbytek nesetříděné části a nejmenší prvek se odebere z nesetříděné a přidá na konec setříděné části. Opakuje se dokud nejsou všechny prvky v setříděné části.

--- 
# Implementace
```C
void selection_sort (int A[ ], int n) {
        // temporary variable to store the position of minimum element

        int minimum;        
        // reduces the effective size of the array by one in  each iteration.

        for(int i = 0; i < n-1 ; i++)  {

           // assuming the first element to be the minimum of the unsorted array .
             minimum = i ;

          // gives the effective size of the unsorted  array .

            for(int j = i+1; j < n ; j++ ) {
                if(A[ j ] < A[ minimum ])  {                //finds the minimum element
                minimum = j ;
                }
             }
          // putting minimum element on its proper position.
          swap ( A[ minimum ], A[ i ]) ; 
        }
   }
```

--- 
# Časová složitost
V nejlepším případě O(n²)

---

Zpět na [[Algoritmy řazení]]