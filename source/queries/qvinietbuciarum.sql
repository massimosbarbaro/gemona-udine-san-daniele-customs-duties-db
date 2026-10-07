TRANSFORM Sum(((IIf([Meno]=0,[costo],-[costo])))) AS Totale
SELECT qGemona.Anno
FROM qGemona
WHERE (((qGemona.Segnatura) Like "vin*" Or (qGemona.Segnatura) Like "macel*" Or (qGemona.Segnatura) Like "oli*" Or (qGemona.Segnatura) Like "bu*") AND ((qGemona.Luogo)="gemona"))
GROUP BY qGemona.Anno
PIVOT IIf([Segnatura]="vino","vini " & "et buciarum",[segnatura]);
