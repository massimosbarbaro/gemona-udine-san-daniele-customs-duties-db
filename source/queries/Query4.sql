TRANSFORM Sum((IIf([Meno]=0,[costo],-[costo]))) AS Totale
SELECT qGemona.Anno
FROM qGemona
WHERE (((qGemona.Segnatura) Like "*vin*"))
GROUP BY qGemona.Anno
PIVOT qGemona.Luogo;
