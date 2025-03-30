--Verifica se existe a tabela, realiza a exclusão e cria uma nova.


IF OBJECT_ID('bronze.ads', 'U') IS NOT NULL
    DROP TABLE bronze.ads;
GO

CREATE TABLE bronze.ads (
    ads_data            DATE,
    ads_midia           NVARCHAR(50),
    ads_valor           DECIMAL(10,2),
    ads_mes             INT,
    ads_ano             INT,
    ads_campanha        NVARCHAR(50),
   
);
GO

IF OBJECT_ID('bronze.leads', 'U') IS NOT NULL
    DROP TABLE bronze.leads;
GO

CREATE TABLE bronze.leads (
    lead_ID              INT,
    lead_fonte           NVARCHAR(50),
	lead_status          NVARCHAR(50),
	lead_scoring         INT,
	lead_engajamento     INT,
	lead_datacriacao     DATE,
	lead_dataconversao   DATE,

   
);
GO

IF OBJECT_ID('bronze.vendas', 'U') IS NOT NULL
    DROP TABLE bronze.vendas;
GO

CREATE TABLE bronze.vendas (
    vendas_index             INT,
	vendas_chave_transacao   NVARCHAR(50),
	vendas_data_transacao    DATE,
	vendas_data_chave        INT,
	vendas_estado            NVARCHAR(50),
	vendas_regiao            NVARCHAR(50),
	vendas_cliente           NVARCHAR(50),
	vendas_segmento          NVARCHAR(50),
	vendas_cliente_chave     INT,
	vendas_id_produto        NVARCHAR(50),
	vendas_produto           NVARCHAR(50),
	vendas_preco             DECIMAL(10,2),
	vendas_custo             DECIMAL(10,2),
	vendas_desconto          NVARCHAR(50),
	vendas_quantidade        INT,
	vendas_total             DECIMAL(10,2),

)
