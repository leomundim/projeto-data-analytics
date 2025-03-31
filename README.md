# Projeto: Data Analytics 

Bem-vindos ao repositório desse projeto! 

O objetivo desse projeto é apresentar uma solução completa de análise de dados, desde a construção de um data warehouse simples, até a criação de um dashboard para análises do negócio, incluindo testes estatísticos e recomendações.

Duas informações de suma importância precisam ser consideradas:

1. Esse projeto é uma releitura de um trabalho que fiz em uma experiência profissional anterior, por isso, algumas informações como nomes de clientes, produtos, preços e custos foram alteradas para valores fictícios a fim de manter a privacidade dos dados da empresa. Contudo, a estrutura do projeto se manteve para ser o mais fidedigno possível em relação ao original.
2. O trabalho anterior foi feito através do Excel, Power BI e Python. Para esse projeto, estou realizando o trabalho de ETL dentro do SQL Server para deixá-lo mais estruturado e utilizando o Azure ML para os testes estatísticos, no intuito de apresentar as melhores práticas em arquitetura e análise de dados.



---
## 📖 Visão Geral

Esse projeto tem o seguinte escopo:

1. **Arquitetura**: Implementar um Data Warehouse no padrão Medallion. Camadas **Bronze** - carregamento as-is, **Silver** - limpeza e enriquecimento dos dados, e **Gold** - modelagem e preparação para uso final (views).
2. **ETL**: Extrair, transformar e carregar os dados, deixando-os prontos para consumo final.
3. **Modelagem de Dados**: Criar as tabelas fato e dimensão.
4. **Dashboard**: Criar dashboard no Power BI com KPI's e métricas como Faturamento, Lucro, Margem, ROAS e demais indicadores relacionados a performance de vendas e marketing.
5. **Análise de Dados**: Analisar dados e realizar testes estatísticos em um cenário de otimização de investimentos em anúncios de uma campanha de marketing.
6. **Apresentação de Resultados**: Apresentar o resultado dos testes, com recomendação de ação.

![Arquitetura](docs/arquitetura_final.drawio.PNG)


---
## 🛠️ Tecnologia 

1. **SQL Server**: T-SQL e SQL.
2. **Power BI**: DAX, Power Query, Power BI Service.
3. **Azure ML**: Python (Statsmodels, SciPy, Pandas).


---
## 📂 Estrutura do Repositório
```
projeto-data-warehouse-analytics/
│
├── datasets/                           # Arquivos brutos usados no projeto
│
├── docs/                               # Documentação do projeto
│   ├── arquitetura_final.drawio        # Arquivo Draw.io com a representação da arquitetura do projeto e fluxo de dados
│   ├── data_catalog.md                 # Catálogo dos datasets, com descrições dos campos e metadados
│   ├── modelagem.drawio                # Diagrama da modelagem de dados (star schema)
│
├── scripts/                            # Scripts SQL scripts usados nas etapas de ETL
│   ├── silver/                         # Scripts de criação, carregamento, limpeza e transformação.
│   ├── gold/                           # Scripts de modelagem.
│
├── testes/                             # Scripts de testes para verificar qualidade dos dados em cada etapa
│
├── LICENSE                             # Licença utilizada no repositório
├── README.md                           # Visão geral do projeto e demais informações

```

---
## 🛡️ Licença

Projeto sob licença [MIT License](LICENSE).
 
---
## Sobre Mim

Meu nome é **Leonardo Mundim**, sou um Analista de Dados & BI, apaixonado por resolver problemas reais de negócios com soluções data-driven, mesclando o pensamento analítico e simplicidade.

Vamos nos conectar!

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/leonardo-mundim)



---
## Prévia dos Resultados
*incluir um GIF com o dashboard ou o próprio link e também gráficos dos testes e a recomendação pós análise estatística*
