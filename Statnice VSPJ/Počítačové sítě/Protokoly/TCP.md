Spolehlivý protokol, který zaručuje, že všechny pakety budou doručeny. Pokud se některý ztratí, kontrolní součet nebude sedět a příjemce si vyžádá nedoručený packet znovu. Spojení je zahájeno 3-way handshake. 

| SYN  | =>      |
| ---- | ------- |
| <=   | SYN/ACK |
| ACK  | =>      |
| Data | =>      |
Každý [[segment]] má své pořadové číslo a když přijdou všechny segmenty, transportní vrstva je poskládá zpět do celých dat a pošle vyšším vrstvám v [[OSI model|OSI modelu]].

---
Zpět na [[Mapa protokolů]]