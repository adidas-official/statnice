![[Pasted image 20260525223611.png]]
[[Datová struktura]] v podobě úplného [[Binární strom|binárního stromu]]. Jsou dva typy haldy:
# Min Heap - Minimální halda.
Nejnižší číslo je vždy na vrcholu. Nové prvky se automaticky posouvají (probublávají) na své místo, kde nebudou menší než jejich rodič. 
# Max Heap - Maximální halda.
Obrácená Min Heap. Největší prvek je nahoře.
Používá se pro implementaci [[Prioritní fronta|prioritní fronty]] a je to základ pro [[|řadící algoritmus]] [[Heap-sort]]. Ukládá se do sekvenčního pole. Při přidání nového prvku se vloží na konec a postupným probubláním nahoru se dostane na své místo.