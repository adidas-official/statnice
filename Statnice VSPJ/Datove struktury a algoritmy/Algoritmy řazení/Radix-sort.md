---
tags:
  - algoritmus
  - řazení
---
![[Pasted image 20260530123455.png]]
Zdroj: [ritambhara.in](https://ritambhara.in/blog/details/radix-sort/297)
# Popis
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


---

Zpět na [[Algoritmy řazení]]