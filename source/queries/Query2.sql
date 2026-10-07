SELECT Generale.Anno, Luogo.Luogo, Pagamento.IdG, Segnatura.Segnatura, Sum((IIf([Meno]=0,[qta],-[Qta]))*[piccoli]) AS Totale
FROM (((((Pagamento INNER JOIN Quantita ON Pagamento.IdP = Quantita.IdP) INNER JOIN Rata ON Pagamento.IdR = Rata.IdR) INNER JOIN Segnatura ON Pagamento.IdS = Segnatura.IdS) INNER JOIN UM ON Quantita.IdU = UM.IdU) INNER JOIN Generale ON Pagamento.IdG = Generale.IdG) INNER JOIN Luogo ON Generale.IdL = Luogo.IdL
GROUP BY Generale.Anno, Luogo.Luogo, Pagamento.IdG, Segnatura.Segnatura;
