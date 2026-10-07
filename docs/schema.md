# Table schema

## Conservazione

| Field | Type | Size |
|---|---|---|
| IdC | 4 | 4 |
| Conservazione | 10 | 50 |

## Funzione

| Field | Type | Size |
|---|---|---|
| IdF | 4 | 4 |
| TipoFunzione | 10 | 50 |

## Generale

| Field | Type | Size |
|---|---|---|
| IdG | 4 | 4 |
| Anno | 10 | 50 |
| IdL | 4 | 4 |
| IdC | 4 | 4 |
| Segnatura | 10 | 50 |
| Note | 10 | 250 |
| Totale | 1 | 1 |

## Lavoro

| Field | Type | Size |
|---|---|---|
| IdL | 4 | 4 |
| Lavoro | 10 | 150 |

## LegamePPrF

| Field | Type | Size |
|---|---|---|
| IdP | 4 | 4 |
| IdPr | 4 | 4 |
| IdF | 4 | 4 |

## Luogo

| Field | Type | Size |
|---|---|---|
| IdL | 4 | 4 |
| Luogo | 10 | 50 |

## Pagamento

| Field | Type | Size |
|---|---|---|
| IdP | 4 | 4 |
| IdS | 4 | 4 |
| IdR | 4 | 4 |
| IdG | 4 | 4 |

## Persone

| Field | Type | Size |
|---|---|---|
| IdPr | 4 | 4 |
| Nome | 10 | 250 |
| Normalizzato | 10 | 50 |
| Origine | 10 | 50 |
| IdL | 4 | 4 |
| Note | 10 | 250 |

## Quantita

| Field | Type | Size |
|---|---|---|
| IdP | 4 | 4 |
| Qta | 6 | 4 |
| IdU | 4 | 4 |
| Meno | 1 | 1 |

## Rata

| Field | Type | Size |
|---|---|---|
| IdR | 4 | 4 |
| Rata | 10 | 50 |

## Segnatura

| Field | Type | Size |
|---|---|---|
| IdS | 4 | 4 |
| Segnatura | 10 | 50 |
| IdSe | 4 | 4 |
| IdSp | 4 | 4 |

## SegnaturaSecondaria

| Field | Type | Size |
|---|---|---|
| IdSe | 4 | 4 |
| Segnatura | 10 | 50 |

## SpecificheSeg

| Field | Type | Size |
|---|---|---|
| IdSp | 4 | 4 |
| SpecificheSeg | 10 | 50 |

## UM

| Field | Type | Size |
|---|---|---|
| IdU | 4 | 4 |
| UM | 10 | 50 |
| Corrente | 10 | 50 |
| Piccoli | 4 | 4 |

