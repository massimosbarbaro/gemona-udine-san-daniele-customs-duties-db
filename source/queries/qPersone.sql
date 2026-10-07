SELECT Persone.Nome, Segnatura.Segnatura, Generale.Anno, Persone.Origine, Quantita.Qta, UM.UM
FROM Persone INNER JOIN (((Generale INNER JOIN Luogo ON Generale.IdL = Luogo.IdL) INNER JOIN ((((Pagamento INNER JOIN Quantita ON Pagamento.IdP = Quantita.IdP) INNER JOIN Segnatura ON Pagamento.IdS = Segnatura.IdS) INNER JOIN Rata ON Pagamento.IdR = Rata.IdR) INNER JOIN UM ON Quantita.IdU = UM.IdU) ON Generale.IdG = Pagamento.IdG) INNER JOIN LegamePPrF ON Pagamento.IdP = LegamePPrF.IdP) ON Persone.IdPr = LegamePPrF.IdPr
GROUP BY Persone.Nome, Segnatura.Segnatura, Generale.Anno, Persone.Origine, Quantita.Qta, UM.UM
ORDER BY Persone.Nome, Segnatura.Segnatura, Generale.Anno;
