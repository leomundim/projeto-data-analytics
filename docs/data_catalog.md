# Data Catalog - Camada Ouro

## Visão Geral
A camada Ouro traz as informações a nível de negócio, estruturada para análises de dados. São 3 tabelas, sendo duas dimensão e uma fato. 

---

**gold.dim_clientes**
- **Objetivo:** Armazenar detalhes de clientes, como segmento e informações demográficas.

| Nome da Coluna   | Tipo de Dados | Descrição                                                                                     |
|------------------|---------------|-----------------------------------------------------------------------------------------------|
| id_cliente       | NVARCHAR(100) | Chave primária para relacionamento que combina código e Estado (ex: 1017-PA).                 |
| nome_cliente     | NVARCHAR(50)  | Nome da empresa (ex: Terra & Fogo).                                                           |
| segmento         | NVARCHAR(50)  | Setor de atuação do cliente (ex: Restaurante).                                                |
| regiao           | NVARCHAR(50)  | Região do país em que a unidade do cliente se encontra (ex: Nordeste).                        |
| estado           | NVARCHAR(50)  | Estado onde a unidade está localizada (ex: PA)                                                |


---

### 2. **gold.dim_produtos**
- **Objetivo:** Armazenar as informações de produtos como linha, preços e custos.

| Nome da Coluna   | Tipo de Dados | Descrição                                                                                     |
|------------------|---------------|-----------------------------------------------------------------------------------------------|
| id_produto       | NVARCHAR(50)  | Chave primária para relacionamento que combina tipo de produto e tamanho (ex: 1017-PA).       |
| produto          | NVARCHAR(50)  | Nome do produto (ex: Quiche G1).                                                              |
| linha_produto    | NVARCHAR(50)  | Especifica a linha do produto (ex: Quiche).                                                   |
| preco_unitario   | DECIMAL(10,2) | Preço unitário de venda (ex: 23,07).                                                          |
| custo_unitario   | DECIMAL(10,2) | Custo unitário do produto (ex: 15,46).                                                        |


---

### 3. **gold.fato_vendas**
- **Objetivo:** Armazenar todas as vendas realizadas e demais informações.

| Nome da Coluna   | Tipo de Dados | Descrição                                                                                     |
|------------------|---------------|-----------------------------------------------------------------------------------------------|
| id_venda            | NVARCHAR(50)  | Chave primária para relacionamento (ex: 2022-152156).                                      |
| data_venda          | DATE          | Data em que a venda foi realizada (ex: 2022-11-09).                                        |
| cliente             | NVARCHAR(50)  | Nome da empresa (ex: Terra & Fogo).                                                        |
| id_cliente          | NVARCHAR(100) | Chave primária para relacionamento que combina código e Estado (ex: 1017-PA).              |
| estado              | NVARCHAR(50)  | Estado onde a unidade está localizada (ex: PA)                                             |
| id_produto          | NVARCHAR(50)  | Chave primária para relacionamento que combina tipo de produto e tamanho (ex: 1017-PA).    |
| produto             | NVARCHAR(50)  | Nome do produto (ex: Quiche G1).                                                           |
| preco_unitario      | DECIMAL(10,2) | Preço unitário de venda (ex: 23,07).                                                       |
| custo_unitario      | DECIMAL(10,2) | Custo unitário do produto (ex: 15,46).                                                     |
| quantidade          | INT           | Quantidade total dos produtos vendidos (ex: 400).                                          |
| valor_total         | DECIMAL(10,2) | Valor total da venda, sendo preço * quantidade (ex: 9228,00).                              |
| desconto_percentual | NVARCHAR(50 ) | Valor do desconto aplicado em percentual (ex: 0%).                                         |
| desconto_valor      | DECIMAL(10,2) | Valor do desconto total aplicado (ex: 0,00).                                               |
| total_com_desconto  | DECIMAL(10,2) | Valor total da vendas depois dos descontos (ex: 9228,00).                                  |
