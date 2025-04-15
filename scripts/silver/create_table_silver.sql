--Verifica se existe a tabela, faz a exclusão e cria uma nova


IF OBJECT_ID('silver.ads', 'U') IS NOT NULL
    DROP TABLE silver.ads;
GO

CREATE TABLE silver.ads (
    ads_data            DATE NULL,
    ads_midia           NVARCHAR(50) NULL,
    ads_valor           DECIMAL(10,2) NULL,

   
);
GO

IF OBJECT_ID('silver.leads', 'U') IS NOT NULL
    DROP TABLE silver.leads;
GO

CREATE TABLE silver.leads (
	lead_ID              INT NULL,
	lead_data			 DATE NULL,
	lead_fonte           NVARCHAR(50) NULL,
	lead_scoring         INT NULL,
	lead_engajamento     INT NULL,
	lead_whats           NVARCHAR(50) NULL,
	lead_amostras		 NVARCHAR(50) NULL,
	lead_proposta		 NVARCHAR(50) NULL,
	lead_compra			 NVARCHAR(50) NULL,

   
);
GO

IF OBJECT_ID('silver.vendas', 'U') IS NOT NULL
    DROP TABLE silver.vendas;
GO

CREATE TABLE silver.vendas (
    vendas_index             INT NULL,
	vendas_chave_transacao   NVARCHAR(50) NULL,
	vendas_source			 NVARCHAR(50) NULL,
	vendas_data_transacao    DATE NULL,
	vendas_estado            NVARCHAR(50) NULL,
	vendas_regiao            NVARCHAR(50) NULL,
	vendas_cliente           NVARCHAR(50) NULL,
	vendas_cliente_chave     NVARCHAR(100)NULL,
	vendas_segmento          NVARCHAR(50) NULL,	
	vendas_id_produto        NVARCHAR(50) NULL,
	vendas_produto           NVARCHAR(50) NULL,
	vendas_preco             DECIMAL(10,2) NULL,
	vendas_custo             DECIMAL(10,2) NULL,
	vendas_desconto          NVARCHAR(50) NULL,
	vendas_quantidade        INT NULL,
	vendas_total1			 DECIMAL(10,2) NULL,
	vendas_total2            DECIMAL(10,2) NULL,

)
