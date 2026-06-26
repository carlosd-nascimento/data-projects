CREATE VIEW vw_ultima_cotacao AS
SELECT c.*
FROM crypto_market.criptomoedas AS c
JOIN (
    SELECT
        simbolo,
        MAX(data_captura) AS ultima_data
    FROM crypto_market.criptomoedas
    GROUP BY simbolo
) ult
ON c.simbolo = ult.simbolo
AND c.data_captura = ult.ultima_data;