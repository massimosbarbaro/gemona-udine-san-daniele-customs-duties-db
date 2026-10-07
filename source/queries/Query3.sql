SELECT Generale.IdG, Luogo.Luogo, Generale.Anno, Segnatura.Segnatura, Generale.Totale, Rata.Rata, Quantita.Qta, UM.UM, Quantita.Meno
FROM ((Generale INNER JOIN Luogo ON Generale.IdL = Luogo.IdL) INNER JOIN (((Pagamento INNER JOIN Quantita ON Pagamento.IdP = Quantita.IdP) INNER JOIN Rata ON Pagamento.IdR = Rata.IdR) INNER JOIN UM ON Quantita.IdU = UM.IdU) ON Generale.IdG = Pagamento.IdG) INNER JOIN Segnatura ON Pagamento.IdS = Segnatura.IdS
ORDER BY Luogo.Luogo, Generale.Anno, Segnatura.Segnatura;
