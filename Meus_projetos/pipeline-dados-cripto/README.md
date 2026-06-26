# 🪙 Crypto Market ETL Pipeline

Pipeline ETL (Extract, Transform, Load) que coleta dados de criptomoedas em tempo real da API CoinGecko e os armazena em um banco de dados MySQL.

---

## 📋 Sobre o Projeto

Este projeto demonstra um fluxo completo de engenharia de dados:

- **Extração** — Consumo da API pública [CoinGecko](https://www.coingecko.com/en/api) para obter as 100 criptomoedas com maior capitalização de mercado
- **Transformação** — Limpeza, seleção de colunas relevantes e tratamento de valores nulos com Pandas
- **Carga** — Inserção otimizada dos dados em um banco MySQL usando `executemany`

---

## 🗂️ Estrutura do Banco de Dados

**Banco:** `crypto_market`  
**Tabela:** `criptomoedas`

| Coluna       | Tipo            | Descrição                          |
|--------------|-----------------|------------------------------------|
| `id`         | INT (PK, AUTO)  | Identificador único                |
| `nome`       | VARCHAR(255)    | Nome da criptomoeda                |
| `simbolo`    | VARCHAR(10)     | Símbolo (ex: BTC, ETH)             |
| `preco_usd`  | DECIMAL(18,2)   | Preço atual em dólares             |
| `volume_24h` | DECIMAL(18,2)   | Volume negociado nas últimas 24h   |

---

## 🚀 Como Executar

### Pré-requisitos

- Python 3.8+
- MySQL Server rodando localmente ou em nuvem
- Conta (gratuita) na CoinGecko não é necessária para o plano público

### 1. Clone o repositório

```bash
git clone https://github.com/seu-usuario/crypto-market-etl.git
cd crypto-market-etl
```

### 2. Instale as dependências

```bash
pip install -r requirements.txt
```

### 3. Configure as variáveis de ambiente

Crie um arquivo `.env` na raiz do projeto:

```env
HOST=localhost
USER=seu_usuario_mysql
PASSWORD=sua_senha_mysql
```

### 4. Execute o pipeline

```bash
python etl.py
```

---

## 📦 Dependências

```
requests
pandas
mysql-connector-python
python-dotenv
```

> Gere o `requirements.txt` com: `pip freeze > requirements.txt`

---

## 🔄 Fluxo do Pipeline

```
CoinGecko API
      │
      ▼
  Extração (requests)
      │
      ▼
  Transformação (pandas)
  - Seleção de colunas
  - Preenchimento de nulos
  - Normalização de strings
      │
      ▼
  Carga (mysql-connector)
  - CREATE DATABASE / TABLE (se não existir)
  - INSERT com executemany
      │
      ▼
  MySQL — tabela criptomoedas
```

---

## 📊 Exemplo de Saída

```
Primeiras 5 linhas dos dados brutos:
         nome simbolo  preco_usd    volume_24h
0      Bitcoin     btc   68000.00  3.200000e+10
1     Ethereum     eth    3500.00  1.500000e+10
...

Dados no banco:
(1, 'Bitcoin', 'btc', 68000.00, 32000000000.00)
(2, 'Ethereum', 'eth', 3500.00, 15000000000.00)
...
```

---

## 🛡️ Boas Práticas Adotadas

- Credenciais protegidas via `.env` (nunca versionadas no Git)
- Inserção em lote com `executemany` para melhor performance
- Infraestrutura criada automaticamente (`CREATE IF NOT EXISTS`)
- Tratamento de valores nulos antes da carga

---

## 📈 Possíveis Melhorias

- [ ] Agendamento automático com Apache Airflow ou cron job
- [ ] Adição de timestamp para histórico de preços
- [ ] Dashboard de visualização com Streamlit ou Power BI
- [ ] Migração para banco de dados em nuvem (AWS RDS, Cloud SQL)
- [ ] Tratamento de erros e logging estruturado