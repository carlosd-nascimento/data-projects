SELECT 
	nome, 
    volume_24h, 
    data_captura
FROM crypto_market.criptomoedas
WHERE data_captura = (SELECT MAX(data_captura) FROM crypto_market.criptomoedas)
ORDER BY volume_24h DESC
LIMIT 5;