SELECT Generale.Anno, Luogo.Luogo, SegnaturaSecondaria.Segnatura, Quantita.Qta, Quantita.Meno, UM.UM, UM.Piccoli, [qta]*[piccoli] AS Costo
FROM (((((((Generale INNER JOIN Pagamento ON Generale.IdG = Pagamento.IdG) INNER JOIN Quantita ON Pagamento.IdP = Quantita.IdP) INNER JOIN Rata ON Pagamento.IdR = Rata.IdR) INNER JOIN UM ON Quantita.IdU = UM.IdU) INNER JOIN Segnatura ON Pagamento.IdS = Segnatura.IdS) INNER JOIN Luogo ON Generale.IdL = Luogo.IdL) LEFT JOIN SegnaturaSecondaria ON Segnatura.IdSe = SegnaturaSecondaria.IdSe) LEFT JOIN SpecificheSeg ON Segnatura.IdSp = SpecificheSeg.IdSp
WHERE (((Generale.Anno)<>"1419") AND ((Luogo.Luogo)="gemona"))
ORDER BY Generale.Anno;
