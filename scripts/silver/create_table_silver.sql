--Verifica se existe a tabela, faz a exclusão e cria uma nova


IF OBJECT_ID('silver.ads', 'U') IS NOT NULL
    DROP TABLE silver.ads;
GO

CREATE TABLE silver.ads (
    ads_data            DATE NULL,
    ads_midia           NVARCHAR(50) NULL,
    ads_valor           INT NULL,
    ads_mes             INT NULL,
    ads_ano             INT NULL,
    ads_campanha        NVARCHAR(50) NULL,
   
);
GO

IF OBJECT_ID('silver.leads', 'U') IS NOT NULL
    DROP TABLE silver.leads;
GO

CREATE TABLE silver.leads (
  lead_ID              INT NULL,
  lead_fonte           NVARCHAR(50) NULL,
	lead_status          NVARCHAR(50) NULL,
	lead_scoring         INT NULL,
	lead_engajamento     INT NULL,
	lead_datacriacao     DATE NULL,
	lead_dataconversao   DATE NULL,

   
);
GO

IF OBJECT_ID('silver.vendas', 'U') IS NOT NULL
    DROP TABLE silver.vendas;
GO

CREATE TABLE silver.vendas (
    vendas_index             INT NULL,
	vendas_chave_transacao   NVARCHAR(50) NULL,
	vendas_data_transacao    DATE NULL,
	vendas_estado            NVARCHAR(50) NULL,
	vendas_regiao            NVARCHAR(50) NULL,
	vendas_cliente           NVARCHAR(50) NULL,
	vendas_segmento          NVARCHAR(50) NULL,
	vendas_cliente_chave     INT NULL,
	vendas_id_produto        NVARCHAR(50) NULL,
	vendas_produto           NVARCHAR(50) NULL,
	vendas_preco             DECIMAL(10,2) NULL,
	vendas_custo             DECIMAL(10,2) NULL,
	vendas_desconto          NVARCHAR(50) NULL,
	vendas_quantidade        INT NULL,
	vendas_total             DECIMAL(10,2) NULL,

)
