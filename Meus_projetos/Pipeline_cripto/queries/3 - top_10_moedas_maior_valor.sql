SELECT 
	nome,
    simbolo,
    MAX(preco_usd) AS ordem_maior_preco 
FROM crypto_market.criptomoedas
GROUP BY nome, simbolo
ORDER BY ordem_maior_preco DESC
LIMIT 10;