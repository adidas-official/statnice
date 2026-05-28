---
tags:
  - databáze
  - teorie
  - studium
---
# Kardinalita

Vyjadřuje integritní omezení pro vztahový typ – určuje, s kolika instancemi druhé [[Entita|entity]] může být v [[Relace|relaci]] jedna instance první entity.

## Typy kardinality:
1. **1:1 (jedna k jedné):** Maximálně jeden objekt entity na obou stranách. 
    * *Příklad:* Jedno kino promítá maximálně jeden konkrétní film a tento film se promítá maximálně v jednom kině.
2. **1:N (jedna k mnoha):** Jeden objekt první entity může být spojen s mnoha objekty druhé entity.
    * *Příklad:* Jedno kino může promítat $N$ různých filmů.
3. **M:N (mnoho k mnoha):** Mnoho objektů první entity může být ve vztahu s mnoha objekty druhé entity.
    * *Příklad:* Každé kino může promítat více filmů a zároveň se každý film může promítat ve více kinech.

Patří mezi [[Základní stavební kameny]].