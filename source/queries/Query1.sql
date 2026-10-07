SELECT Luogo.Luogo, Generale.Anno, Conservazione.Conservazione
FROM (Conservazione RIGHT JOIN Generale ON Conservazione.IdC = Generale.IdC) INNER JOIN Luogo ON Generale.IdL = Luogo.IdL
ORDER BY Luogo.Luogo DESC , Generale.Anno;
