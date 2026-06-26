# 🏠 Previsão de Preços de Imóveis com Regressão Linear

Projeto acadêmico desenvolvido para a disciplina de **Aprendizagem de Máquina**, aplicando a técnica de **Regressão Linear Múltipla** para prever preços de casas com base em características do imóvel.

---

## 📋 Sobre o Projeto

O objetivo foi explorar na prática o funcionamento da Regressão Linear, desde a análise exploratória dos dados até a avaliação do modelo, utilizando um dataset real de preços de imóveis.

---

## 📊 Dataset

**Multiple Linear Regression Housing Price Detection**  
Disponível no Kaggle: [acesse aqui](https://www.kaggle.com/datasets/gauravbr/multiple-linear-regression-housing-price-detection)

O dataset contém informações sobre imóveis, incluindo variáveis numéricas e categóricas. Para este projeto, foram utilizadas apenas as variáveis numéricas.

---

## 🔧 Tecnologias Utilizadas

- Python 3
- [pandas](https://pandas.pydata.org/) — manipulação e análise de dados
- [numpy](https://numpy.org/) — operações numéricas
- [matplotlib](https://matplotlib.org/) — visualização de dados
- [seaborn](https://seaborn.pydata.org/) — visualização estatística
- [scikit-learn](https://scikit-learn.org/) — modelo de Machine Learning
- [gdown](https://github.com/wkentaro/gdown) — download do dataset via Google Drive

---

## 📁 Estrutura do Projeto

```
📦 projeto-regressao-linear
 ┣ 📓 Machine_learning.ipynb   # Notebook principal com todo o desenvolvimento
 ┣ 📄 housing.csv              # Dataset utilizado
 ┣ 📄 requirements.txt         # Dependências do projeto
 ┣ 🖼️ area_price.png           # Gráfico: Relação entre Área e Preço
 ┣ 🖼️ heatmap.png              # Gráfico: Mapa de Correlação das Variáveis
 ┣ 🖼️ linear_regression_pred.png # Gráfico: Valores Reais vs Previstos
 ┗ 📄 README.md
```

---

## ⚙️ Como Executar

**1. Clone o repositório:**
```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio
```

**2. Instale as dependências:**
```bash
pip install -r requirements.txt
```

**3. Abra o notebook:**
```bash
jupyter notebook Machine_learning.ipynb
```

> Também é possível abrir diretamente no [Google Colab](https://colab.research.google.com/) fazendo upload do arquivo `.ipynb`.

---

## 🔍 Etapas do Projeto

### 1. Importação e Exploração dos Dados
Carregamento do dataset e análise inicial: shape, tipos de variáveis, valores nulos e estatísticas descritivas (média, desvio padrão, mínimos e máximos).

### 2. Visualização Exploratória

**Gráfico de Dispersão — Área vs Preço:**  
Evidencia uma tendência positiva entre a área da casa e o preço do imóvel.

![Área vs Preço](area_price.png)

**Mapa de Correlação:**  
Mostra a correlação entre todas as variáveis numéricas. As variáveis `bathrooms` e `area` apresentam as maiores correlações com o preço.

![Mapa de Correlação](heatmap.png)

### 3. Modelagem — Regressão Linear Múltipla

**Variáveis independentes (X):** `area`, `bedrooms`, `bathrooms`, `stories`  
**Variável dependente (y):** `price`

Os dados foram divididos em **80% treino** e **20% teste** com `random_state=42` para garantir reprodutibilidade.

### 4. Avaliação do Modelo

| Métrica | Resultado |
|---|---|
| MSE (Erro Quadrático Médio) | Valor elevado, indicando diferenças entre previsão e realidade |
| R² | ~51% — o modelo explica boa parte da variação dos preços apenas com variáveis numéricas |

**Valores Reais vs Valores Previstos:**

![Reais vs Previstos](linear_regression_pred.png)

A linha vermelha representa a previsão ideal. Os pontos próximos a ela indicam que o modelo conseguiu capturar parte do comportamento dos preços.

---

## 📌 Conclusão

A Regressão Linear permitiu identificar correlações entre as características do imóvel e seu preço. Casas com maior área, mais banheiros, quartos e andares tendem a apresentar preços mais altos. Embora o modelo não explique completamente a variação dos preços — o que é esperado ao usar apenas variáveis numéricas — os resultados demonstram que a técnica é capaz de capturar padrões relevantes nos dados.

---

## 📚 Contexto Acadêmico

Projeto desenvolvido como atividade avaliativa da disciplina de **Aprendizagem de Máquina**. O desenvolvimento foi realizado no **Google Colab** seguindo as diretrizes da atividade proposta.