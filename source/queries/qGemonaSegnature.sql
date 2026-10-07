TRANSFORM Sum(((IIf([Meno]=0,[qta],-[Qta]))*[piccoli])) AS Totale
SELECT Generale.Anno
FROM (((((Pagamento INNER JOIN Quantita ON Pagamento.IdP = Quantita.IdP) INNER JOIN Rata ON Pagamento.IdR = Rata.IdR) INNER JOIN Segnatura ON Pagamento.IdS = Segnatura.IdS) INNER JOIN UM ON Quantita.IdU = UM.IdU) INNER JOIN Generale ON Pagamento.IdG = Generale.IdG) INNER JOIN Luogo ON Generale.IdL = Luogo.IdL
WHERE (((Segnatura.Segnatura) Like "*") AND ((Luogo.Luogo)="gemona"))
GROUP BY Generale.Anno
PIVOT Segnatura.Segnatura;
