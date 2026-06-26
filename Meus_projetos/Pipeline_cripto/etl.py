import requests
import pandas as pd
import mysql.connector
from dotenv import load_dotenv
import os

# Configurações de ambiente e credenciais
load_dotenv()
dbHost = os.getenv("HOST")
dbUser = os.getenv("USER")
dbPassword = os.getenv("PASSWORD")

# Inicialização da conexão com o MySQL
conn = mysql.connector.connect(
    host=dbHost,
    user=dbUser,
    password=dbPassword
)
cursor = conn.cursor()

# Garantindo a infraestrutura necessária no banco de dados
cursor.execute("CREATE DATABASE IF NOT EXISTS crypto_market")
cursor.execute("USE crypto_market")
cursor.execute("""
CREATE TABLE IF NOT EXISTS criptomoedas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    simbolo VARCHAR(10),
    preco_usd DECIMAL(18,2),
    volume_24h DECIMAL(18,2),
    data_captura TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
""")

# --- EXTRAINDO DADOS ---
# Consumo de dados da API CoinGecko
url = "https://api.coingecko.com/api/v3/coins/markets"
params = {
    "vs_currency": "usd",
    "order": "market_cap_desc",
    "per_page": 100,
    "page": 1,
}
response = requests.get(url, params=params)
data = response.json()

# --- TRANSFORMANDO DADOS ---
# Criando o DataFrame com os dados extraídos da API
df = pd.DataFrame(data)

# Selecionando apenas as colunas relevantes e renomeando-as para o português
df = df[["name", "symbol", "current_price", "total_volume"]]
df.columns = ["nome", "simbolo", "preco_usd", "volume_24h"]

# Exibindo as primeiras linhas dos dados brutos e verificando a presença de valores nulos
print(f"Primeiras 5 linhas dos dados brutos:\n{df.head()}")
print(f"Valores nulos por coluna:\n{df.isnull().sum()}")

# Tratamento de dados e limitando o tamanho do nome para 50 caracteres
df = df.fillna(0)
df['nome'] = df['nome'].str.slice(0, 50)

# Visualizando os dados transformados
print("Dados transformados!")
print(df.head())

# --- CARREGANDO DADOS ---
# Inserção otimizada utilizando executemany para performance
cursor.executemany("""
    INSERT INTO criptomoedas (nome, simbolo, preco_usd, volume_24h)
    VALUES (%s, %s, %s, %s)
""", df.values.tolist())
conn.commit()

# Validação da carga de dados
cursor.execute("SELECT * FROM criptomoedas LIMIT 10")
resultados = cursor.fetchall()

print("Dados no banco:")
for r in resultados:
    print(r)

# Encerrando a conexão com o banco de dados
cursor.close()
conn.close()