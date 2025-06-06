/*
============================================

-- Criação das tabelas fato e dimensão

============================================
*/

-- Criação da tabela dimensão 'Clientes'
IF OBJECT_ID('gold.dim_clientes', 'V') IS NOT NULL
    DROP VIEW gold.dim_clientes;
GO

CREATE VIEW gold.dim_clientes AS

SELECT 
	DISTINCT(vendas_cliente_chave) AS id_cliente,
	vendas_cliente 		       AS nome_cliente,
	vendas_segmento 	       AS segmento,
	vendas_regiao 	               AS regiao,
	vendas_estado  	 	       AS estado
FROM silver.vendas;

GO


-- Criação da tabela dimensão 'Produtos'
IF OBJECT_ID ('gold.dim_produtos', 'V') IS NOT NULL
	DROP VIEW gold.dim_produtos;

GO

CREATE VIEW gold.dim_produtos AS

SELECT
	DISTINCT(vendas_id_produto) AS id_produto,
	vendas_produto 	   	    AS produto,
	CASE
	  WHEN SUBSTRING(vendas_produto, 1, CHARINDEX(' ', vendas_produto) - 1) = 'Bolo' THEN CONCAT('Bolo', ' ', 'Inglês')
	  ELSE SUBSTRING(vendas_produto, 1, CHARINDEX(' ', vendas_produto) - 1)
	END AS linha_produto,
	vendas_preco 		    AS preco_unitario,
	vendas_custo 		    AS custo_unitario
FROM silver.vendas

GO


-- Criação da tabela fato 'Vendas'
IF OBJECT_ID('gold.fato_vendas', 'V') IS NOT NULL
	DROP VIEW gold.fato_vendas;

GO

CREATE VIEW gold.fato_vendas AS

SELECT
	vendas_chave_transacao  	AS id_venda,
	vendas_data_transacao 	   	AS data_venda,
	vendas_cliente 		        AS cliente,
	vendas_cliente_chave 	        AS id_cliente,
	vendas_source				AS origem_cliente,
	vendas_regiao				AS regiao,
	vendas_estado 			AS estado,
	vendas_id_produto 	        AS id_produto,
	vendas_produto 			AS produto,
	vendas_preco 			AS preco_unitario,
	vendas_quantidade 		AS quantidade,
	vendas_total2		        AS valor_total,
	vendas_desconto 		AS desconto_percentual,
	CAST(CAST(SUBSTRING(vendas_desconto, 1, LEN(vendas_desconto) - 1) AS DECIMAL(10,2)) / 100 * vendas_total2 AS DECIMAL(10,2)) AS desconto_valor	
FROM silver.vendas

GO

-- Criação da tabela dimensão 'Anúncios'
IF OBJECT_ID('gold.dim_anuncios', 'V') IS NOT NULL
    DROP VIEW gold.dim_anuncios;
GO

CREATE VIEW gold.dim_anuncios AS

SELECT 
	ads_data		AS data_anuncio,
	CASE	
		WHEN ads_midia = 'google' THEN 'Google Ads'
		ELSE 'Meta Ads'
	END				AS midia,
	ads_valor/100   AS valor_investido
FROM silver.ads;

GO


-- Criação da tabela fato 'Leads'
IF OBJECT_ID('gold.fato_leads', 'V') IS NOT NULL
	DROP VIEW gold.fato_leads;

GO

CREATE VIEW gold.fato_leads AS

SELECT
	lead_ID				AS ID_lead,
	lead_data			AS data_conversao,
	lead_fonte			AS origem_lead,
	lead_scoring		AS scoring,
	lead_engajamento	AS engajamento,
	lead_whats			AS whatsapp,
	lead_amostras		AS amostras,
	lead_proposta		AS proposta,
	lead_compra			AS compra

FROM silver.leads
