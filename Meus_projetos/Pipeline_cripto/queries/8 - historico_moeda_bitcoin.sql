SELECT 
    data_captura,
    preco_usd
FROM crypto_market.criptomoedas
WHERE simbolo = 'btc'
ORDER BY data_captura;