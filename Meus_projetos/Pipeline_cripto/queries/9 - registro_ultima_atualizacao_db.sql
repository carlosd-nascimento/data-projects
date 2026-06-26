SELECT
	nome,
    preco_usd,
    data_captura
FROM crypto_market.criptomoedas
WHERE data_captura = (
	SELECT MAX(data_captura)
    FROM crypto_market.criptomoedas
	);