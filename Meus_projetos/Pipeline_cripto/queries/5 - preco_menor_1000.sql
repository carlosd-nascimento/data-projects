SELECT
    nome,
    preco_usd,
    data_captura
FROM crypto_market.criptomoedas
WHERE preco_usd < 1000
    AND data_captura = (SELECT MAX(data_captura) FROM crypto_market.criptomoedas);