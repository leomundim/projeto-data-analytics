# Projeto: Data Analytics #

Bem-vindos ao repositório desse projeto! 

O objetivo desse projeto é apresentar uma solução completa de análise de dados, desde a construção de um data warehouse simples, até a criação de um dashboard para análises do negócio, incluindo testes estatísticos e recomendações.

Duas informações de suma importância precisam ser consideradas:

**1.** Esse projeto é uma releitura de um trabalho que fiz em uma experiência profissional anterior, por isso, algumas informações como nomes de clientes, produtos, preços e custos foram alteradas para valores fictícios a fim de manter a privacidade dos dados da empresa. Contudo, a estrutura do projeto se manteve para ser o mais fidedigno possível em relação ao original.

**2.** O trabalho anterior foi feito através do Excel, Power BI e Python. Para esse projeto, estou realizando o trabalho de ETL dentro do SQL Server para deixá-lo mais estruturado e utilizando o Azure ML para os testes estatísticos, no intuito de apresentar as melhores práticas em arquitetura e análise de dados.




## 1️⃣ Visão Geral

Esse projeto tem o seguinte escopo:

- **Arquitetura**: Implementar um Data Warehouse no padrão Medallion.
  - BRONZE - carregamento as-is
  - SILVER - limpeza e enriquecimento dos dados
  - GOLD   - modelagem e preparação para uso final (views)
- **ETL**: Extrair, transformar e carregar os dados, deixando-os prontos para consumo final.
- **Modelagem de Dados**: Criar as tabelas fato e dimensão.
- **Dashboard**: Criar dashboard no Power BI com KPI's e métricas como Faturamento, Lucro, Margem, ROAS e demais indicadores relacionados a performance de vendas e marketing.
- **Análise de Dados**: Analisar dados e realizar testes estatísticos em um cenário de otimização de investimentos em anúncios de uma campanha de marketing.
- **Apresentação de Resultados**: Apresentar o resultado dos testes, com recomendação de ação.

![Arquitetura](docs/arquitetura_final.drawio.PNG)




## 2️⃣ Tecnologia 

- **SQL Server**: T-SQL e SQL.
- **Power BI**: DAX, Power Query, Power BI Service.
- **Azure ML**: Python (Statsmodels, SciPy, Pandas).



## 3️⃣ Contexto de Negócio

- Havia a necessidade de organizar os dados e definir métricas e KPIs de vendas e marketing para acompanhar o desempenho da área comercial. Para isso, seria essencial criar um dashboard que oferecesse tanto uma visão consolidada quanto uma análise mais detalhada. O   
  objetivo era permitir uma visualização rápida e prática de indicadores como Receita, Lucro, ROAS, Share dos clientes, qualidade do funil de vendas, taxa de conversão, Renda Mensal Recorrente (MRR) e Lifetime Value (LTV).
  
- Durante a análise dos dados, percebeu-se que as vendas de embalagens para panetone aumentavam no final do ano, algo esperado. No entanto, ao investir em marketing, esse crescimento não era significativamente maior. Para entender melhor essa relação, decidi realizar um   teste estatístico e avaliar se os investimentos em campanhas de marketing, entre outubro e dezembro, realmente impactavam as vendas nesse período.
  
- Optei pelo teste t (inserir justificativa para a escolha do teste) e, com os resultados, apresentei recomendações embasadas, reforçando a tomada de decisão orientada por dados. Isso permitiu direcionar os próximos passos com mais confiança e estratégia.

## 4️⃣ Resultados

*inserir o link para o dashboard, gráficos com o resultado dos testes estatísticos e o link para o documento com a recomendação*





## 5️⃣ Estrutura do Repositório
```
projeto-data-warehouse-analytics/
│
├── datasets/                           # Arquivos brutos usados no projeto
│   ├── ads.csv                         # Arquivo com os anúncios em campanhas de marketing
│   ├── leads.csv                       # Arquivo com informações sobre leads coletadas do CRM e sistemas de marketing
│   ├── vendas.csv                      # Arquivo com as vendas realizadas, coletadas do ERP
|
├── docs/                               # Documentação do projeto
│   ├── arquitetura_final.drawio        # Arquivo Draw.io com a representação da arquitetura do projeto e fluxo de dados
│   ├── data_catalog.md                 # Catálogo dos datasets, com descrições dos campos e metadados
│   ├── diagrama .drawio                # Diagrama da modelagem de dados (star schema)
│
├── scripts/                            # Scripts SQL scripts usados nas etapas de ETL
│   ├── gold/                           # Scripts de modelagem
|   |── silver/                         # Scripts de criação, carregamento, limpeza e transformação
|   |── create_database.sql             # Script de criação da base de dados e schemas
|
├── LICENSE                             # Licença utilizada no repositório
├── README.md                           # Visão geral do projeto e demais informações

```


## 6️⃣ Licença

Projeto sob licença [MIT License](LICENSE).
 
---
## Sobre Mim

Meu nome é **Leonardo Mundim**, sou um Analista de Dados & BI, apaixonado por resolver problemas reais de negócios com soluções data-driven, mesclando o pensamento analítico e simplicidade.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/leonardo-mundim)




