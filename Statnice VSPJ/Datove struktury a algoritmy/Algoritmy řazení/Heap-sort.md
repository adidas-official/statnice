---
tags:
  - algoritmus
  - řazení
name: Řazení haldou
---
![[Pasted image 20260530122914.png]]
Zdroj: [Hackerearth.com](https://www.hackerearth.com/practice/algorithms/sorting/heap-sort/tutorial/)
# Popis
Využívá se speciální stromová [[Datová struktura|datovou strukturu]] [[Halda#Max Heap - Maximální halda.|maximální haldu]], kterou vytvoří v nesetříděném poli. Vlastní řazení pak probíhá tak, že se opakovaně vymění kořen haldy (absolutně největší prvek) s posledním prvkem haldy, samotná halda se o jeden prvek zmenší a zbytek pole se shora dolů opraví, aby byla obnovena haldová vlastnost. 

--- 
# Implementace
```C
    void heap_sort(int Arr[ ])
    {
        int heap_size = N;
        build_maxheap(Arr);
        for(int i = N; i >= 2 ; i-- )
        {
            swap|(Arr[ 1 ], Arr[ i ]);
            heap_size = heap_size - 1;
            max_heapify(Arr, 1, heap_size);
        }
    }
```

--- 
# Časová složitost
O(n log n)

---

Zpět na [[Algoritmy řazení]]