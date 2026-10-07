# Dazi: indirect taxes of Gemona, Udine and San Daniele del Friuli, 1346–1449

*I dazi di Gemona, Udine e San Daniele del Friuli, 1346–1449*

**db** · 2002–2008 · version 2008  
Author: **Massimo Sbarbaro** ([ORCID 0009-0006-8965-9013](https://orcid.org/0009-0006-8965-9013))

## Overview

A relational database of the indirect taxes (*dazi*) farmed out by three Friulian communes – Gemona, Udine and San Daniele – between 1346 and 1449. For every year and place it records which duties were farmed (wine, butchery, oil, salt and bread, cloth, measures, loading and unloading, pasture and many others), the instalments paid, the amounts in the different moneys of account and the people involved as tax farmers or guarantors, with their trade and origin. All amounts are converted to a common unit (*piccoli*) so that yearly revenues can be compared across duties and places. The database is the basis of the author's book on the duties of Gemona (see *Related publication*). It grew out of a first database built in 2002 on the registers of the *camerari* of San Daniele and Udine, which it supersedes.

I designed this database and entered and analysed the data in 2002–2008, as part of my historical research. It is published here with all its data, so that the results can be checked and reused.

## Tables

| Table | Records | Content |
|---|---|---|
| `Generale` | 114 | One record per place and year: year, place, repository, shelfmark, notes. |
| `Pagamento` | 1,003 | Payments: duty, instalment, year record. |
| `Quantita` | 1,397 | Amounts of each payment, with unit and a flag for subtracted sums. |
| `Persone` | 207 | Tax farmers and guarantors: name, normalised first name, origin, trade. |
| `LegamePPrF` | 736 | Link between payments and persons, with their role (tax farmer / guarantor). |
| `Segnatura / SegnaturaSecondaria / SpecificheSeg` | 38 / 25 / 12 | Types of duty, their groups and specifications (despite the table names these are not shelfmarks). |
| `UM` | 10 | Moneys and measures with their value in *piccoli*. |
| `Luogo, Lavoro, Rata, Funzione, Conservazione` | – | Places, trades, instalments, roles, repositories. |

## Method

Every amount is converted to *piccoli* through `UM.Piccoli` (mark of denari = 2,240; lira of denari = 280; denaro = 14; mark of soldi = 1,920; lira of soldi = 240; soldo = 12; lira of Veronese = 20); subtracted sums are marked by `Quantita.Meno`. Exchange rates of the ducat are recorded in the notes. Queries produce yearly totals by duty and place, comparisons between the three communes and charts on linear and logarithmic scales.

## Sources

- **Gemona** (1346–1448, 58 years): Archivio Comunale di Gemona del Friuli, registers of the council deliberations and registers of the *massari* (income and expenditure of the commune), preserved for the years 1346, 1349, 1355–57, 1359, 1365–66, 1370–72, 1374, 1378, 1380–82, 1384, 1386–1400, 1402, 1404–10, 1412–24, 1426–49. Archival research by the author, published in the book cited below.
- **San Daniele del Friuli** (1373–1449, 35 years): Biblioteca Civica Guarneriana, San Daniele del Friuli – Archivio Storico Comunale (ASCD) 228 (1373, 1394–1403, 1414–19), 229 (1420–36), 230 (1437–49); Fondo Coluta 13 (1404–16); Fondo Fontanini 266 (1425).
- **Udine** (1348–1419, 21 years): Biblioteca Civica "V. Joppi", Udine, Fondo Joppi, ms. 882, vols. 5 (1348), 10 (1357), 10 bis (1356, 1364), 13 (1384), 14 (1385), 15 (1391), 18 (1419).

## Related publication

- Sbarbaro, Massimo. 2010. *I dazi di Gemona del Friuli. Per la storia delle imposte indirette nel Medioevo: nuove metodologie informatiche di analisi*. Trieste: CERM (Collana Studi 07). ISBN 978-88-95368-09-2.

## Repository contents

| Path | Content |
|---|---|
| `database/Dazi2000.mdb` | The original db with all data, queries, forms and chart reports. |
| `data/*.csv` | Every table exported as UTF-8 CSV. |
| `source/` | Forms, reports, modules and the SQL of every query as plain text. |
| `docs/schema.md` | Tables and fields. |

## How to cite

> Sbarbaro, Massimo. 2008. *Dazi: indirect taxes of Gemona, Udine and San Daniele del Friuli, 1346–1449*. Dataset (db, 2002–2008), version 2008. Zenodo.

## License

Data and database are released under the [Creative Commons Attribution 4.0 International](LICENSE) license (CC BY 4.0). 
