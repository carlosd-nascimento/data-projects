SELECT 
    simbolo,
    MIN(preco_usd) AS menor_preco,
    MAX(preco_usd) AS maior_preco,
    AVG(preco_usd) AS media_preco
FROM crypto_market.criptomoedas
GROUP BY simbolo