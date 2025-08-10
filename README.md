# Projeto: Data Analytics #

Bem-vindo ao repositório deste projeto! 

Este projeto apresenta uma solução completa de análise de dados, desde a construção de um data warehouse simples até a criação de um dashboard para monitoramento do negócio. 

![Arquitetura](docs/arquitetura_final.drawio.PNG)

### Informações importantes: 

Origem do projeto: Esta é uma releitura de um trabalho que desenvolvi em uma experiência profissional anterior. Para preservar a privacidade da empresa, dados como nomes de clientes, produtos, preços e custos foram substituídos por valores fictícios. No entanto, a estrutura do projeto foi mantida para garantir a fidelidade ao cenário real.



## ◾ Contexto de Negócio

- Havia a necessidade de organizar os dados e definir métricas e KPIs de vendas e marketing para acompanhar o desempenho da área comercial. Para isso, seria essencial criar um dashboard que oferecesse tanto uma visão consolidada quanto uma análise mais detalhada. O   
  objetivo era permitir uma visualização rápida e prática de indicadores como Receita, Lucro, ROAS, Share dos clientes, qualidade do funil de vendas, taxa de conversão, Renda Mensal Recorrente (MRR) e Lifetime Value (LTV).
  


## ◾ Visão Geral

Para o projeto serão seguidas as seguintes etapas:  

###   Arquitetura de Dados  
Implementação de um Data Warehouse simples seguindo o padrão Medallion Architecture:  
- **Bronze**: Carregamento dos dados no formato original (*as-is*).  
- **Silver**: Limpeza, padronização e enriquecimento dos dados.  
- **Gold**: Modelagem e preparação dos dados para consumo final (views).  

###   ETL (Extração, Transformação e Carga)   
Processamento e organização dos dados para que estejam prontos para análises e visualizações.  

###   Modelagem de Dados   
Criação das tabelas fato e dimensão, garantindo uma estrutura otimizada para consultas e análises.  

###   Dashboard no Power BI  
Desenvolvimento de um painel interativo com métricas e KPIs estratégicos, como Faturamento, Lucro, Margem, ROAS e outros indicadores de performance de vendas e marketing.  



## ◾ Tecnologia 

- **`SQL Server`**: T-SQL e SQL.
- **`Power BI`**: DAX, Power Query, Power BI Service.



## ◾ Resultados

[Dashboard Power BI](https://www.loom.com/share/31660dc2d6f44b78a92252a9df3f1c47?sid=2fac780b-5ea6-4f70-8637-9c41cb62ea46)




## ◾ Diretórios do Repositório
```
projeto-data-warehouse-analytics/
│
├── 📂 files                                # Arquivos brutos usados no projeto
│    ├── ads.csv                             # Arquivo com os anúncios em campanhas de marketing
│    ├── leads.csv                           # Arquivo com informações sobre leads coletadas do CRM e sistemas de marketing
│    ├── vendas.csv                          # Arquivo com as vendas realizadas, coletadas do ERP
|    ├── Dashboard - Performance Comercial
|
├── 📂 docs                                  # Documentação do projeto
│    ├── arquitetura_final.drawio            # Arquivo Draw.io com a representação da arquitetura do projeto e fluxo de dados
│    ├── data_catalog.md                     # Catálogo dos datasets, com descrições dos campos e metadados
│    ├── diagrama .drawio                    # Diagrama da modelagem de dados (star schema)
│
├── 📂 scripts                               # Scripts SQL scripts usados nas etapas de ETL
│    ├── 📂gold                              # Scripts de modelagem
|    ├── 📂silver                            # Scripts de criação, carregamento, limpeza e transformação
|    ├── create_database.sql                 # Script de criação da base de dados e schemas
|
├── LICENSE                                  # Licença utilizada no repositório
├── README.md                                # Visão geral do projeto e demais informações

```


## ◾ Licença

Projeto sob licença [MIT License](LICENSE).
 
---
## ◾ Sobre Mim

Meu nome é **Leonardo Mundim**, sou Analista de Inteligência de Mercado, com sólida experiência em planejamento e estratégia comercial na indústria de mineração, metalurgia, embalagens e bens de consumo.

Minha atuação envolve a integração das áreas comercial, marketing e operações, entendendo necessidades e metas, e criando produtos de dados — relatórios, dashboards, apresentações, análises estatísticas — que suportem a tomada de decisão, buscando sempre clareza, simplicidade e impacto.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/leonardo-mundim)




