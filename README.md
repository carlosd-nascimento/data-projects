# 📊 Projetos de Dados — Carlos Diego

> Repositório central com projetos práticos de Engenharia de Dados, Análise de Dados, Machine Learning e IA Generativa, desenvolvidos em programas de formação e por iniciativa própria.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/carlosdiego-nascimento/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/carlosd-nascimento)

---

## 🗂️ Estrutura do Repositório

```
data-projects/
│
├── Meus_projetos/               # Projetos desenvolvidos por iniciativa própria
│   ├── Pipeline_cripto/         # ETL pipeline de criptomoedas com Python e MySQL
│   └── ML/                      # Previsão de preços de imóveis com Regressão Linear
│
├── Desenvolve_GB_Koru/          # Projetos do Programa Desenvolve (Grupo Boticário & Escola Koru)
│   ├── Mini_projeto_analise_de_dados/   # EDA de vendas com Python
│   └── Mini_projeto_livraria_devsaber/ # Modelagem e SQL com banco de livraria fictícia
│
└── DIO_genIA_dados/             # Bootcamp IA Generativa & Dados — DIO
    ├── Excel_ETL/               # ETL com Power Query no Excel
    ├── Projeto_assistenteDeVoz/ # Assistente de voz com Whisper e APIs de IA
    ├── Treinando_NotebookLM/    # Estudo de Ed. Financeira com NotebookLM
    └── e_cards_SQL_IA/          # Integração de SQL e geração de dados com IA
```

---

## 🚀 Meus Projetos

### 🪙 [Crypto Market ETL Pipeline](./Meus_projetos/Pipeline_cripto/)

Pipeline de dados end-to-end que extrai cotações de criptomoedas em tempo real, transforma e carrega em banco MySQL — com análises via SQL.

![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=flat&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=flat&logo=mysql&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.x-150458?style=flat&logo=pandas&logoColor=white)
![Status](https://img.shields.io/badge/Status-Concluído-brightgreen?style=flat)

- Consumo da API CoinGecko (Top 100 criptomoedas por market cap)
- Transformação e limpeza com Pandas
- Carga otimizada em MySQL com `executemany`
- 10+ queries SQL com rankings, subqueries, views e histórico de preços

---

### 🏠 [Previsão de Preços de Imóveis — Regressão Linear](./Meus_projetos/ML/)

Projeto acadêmico aplicando Regressão Linear Múltipla para prever preços de casas com base em características do imóvel.

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![Scikit-learn](https://img.shields.io/badge/Scikit--learn-F7931E?style=flat&logo=scikit-learn&logoColor=white)
![Status](https://img.shields.io/badge/Status-Concluído-brightgreen?style=flat)

- Dataset do Kaggle: Housing Price Detection
- EDA com Matplotlib e Seaborn (heatmap de correlação, dispersão)
- Divisão treino/teste (80/20) e avaliação com R² e MSE
- R² de ~51% utilizando apenas variáveis numéricas

---

## 🎓 Programa Desenvolve — Grupo Boticário & Koru

Projetos desenvolvidos durante a **Jornada de Especialização em Engenharia de Dados (160h)**.

### 📈 [Análise Exploratória de Vendas](./Desenvolve_GB_Koru/Mini_projeto_analise_de_dados/)

EDA de um dataset de vendas aplicando conceitos de Python para Dados.

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-11557C?style=flat)

- Identificação de nulos e estatísticas descritivas
- Análise de produtos mais vendidos e evolução temporal
- Visualizações com Matplotlib

---

### 📚 [Livraria DevSaber — Mini Projeto SQL](./Desenvolve_GB_Koru/Mini_projeto_livraria_devsaber/)

Banco de dados relacional de uma livraria fictícia, desenvolvido originalmente no BigQuery e migrado para MySQL.

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)
![BigQuery](https://img.shields.io/badge/BigQuery-4285F4?style=flat&logo=google-cloud&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-CC2927?style=flat)

- Modelagem com 4 tabelas relacionadas (produtos, clientes, vendedores, vendas)
- Consultas analíticas: ranking de vendedores, livros mais vendidos, clientes top
- View `vw_detalhes_vendas` consolidando todas as tabelas

> 🏅 Certificado: Jornada de Especialização em Engenharia de Dados — 160h (out/2025)

---

## 🤖 Bootcamp IA Generativa & Dados — DIO

Projetos práticos focados em IA Generativa, processamento de dados e engenharia de prompts.

### 🎙️ [Assistente de Voz](./DIO_genIA_dados/Projeto_assistenteDeVoz/)
Desenvolvimento de um assistente de voz integrado com Whisper e APIs de IA.

### 🧠 [Treinando NotebookLM](./DIO_genIA_dados/Treinando_NotebookLM/)
Estudo de Educação Financeira Básica utilizando o NotebookLM do Google como ferramenta de aprendizagem ativa — com 5 fontes institucionais, glossário e prompts reutilizáveis.

### 🃏 [E-Cards SQL e IA](./DIO_genIA_dados/e_cards_SQL_IA/)
Integração de scripts SQL com geração automatizada de dados via prompts analíticos.

### 📊 [Excel ETL](./DIO_genIA_dados/Excel_ETL/)
Laboratórios de manipulação e transformação de dados com Power Query no Excel.

---

## 🛠️ Tecnologias e Ferramentas

| Área | Ferramentas |
|---|---|
| Linguagens | Python, SQL |
| Dados e ETL | Pandas, NumPy, Power Query, Requests |
| Banco de Dados | MySQL, Google BigQuery |
| Machine Learning | Scikit-learn, Matplotlib, Seaborn |
| IA Generativa | NotebookLM, Whisper, APIs de IA |
| Ambiente | Google Colab, Jupyter Notebook, MySQL Workbench |
