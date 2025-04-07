-- Carregamento dos dados das tabelas ads, leads e vendas da camada bronze, para a camada silver.
-- Limpeza e normalização de dados.

BEGIN TRY

  -- Carregamentos dos dados da tabela 'ads' para a camada silver
  
TRUNCATE TABLE silver.ads;
INSERT INTO silver.ads(
	ads_data,
	ads_midia,
	ads_valor

)
SELECT
	[data],
	midia,
	valor
FROM bronze.ads


-- Carregamentos dos dados da tabela 'leads' para a camada silver

TRUNCATE TABLE silver.leads;
INSERT INTO silver.leads(
	lead_ID,              
	lead_data,			 
	lead_fonte,           
	lead_scoring,        
	lead_engajamento,     
	lead_whats,           
	lead_amostras,		
	lead_proposta,		 
	lead_compra			 
)
SELECT 
	ID_lead,
	Data_conversão,
	fonte_do_lead,
	CASE 
		WHEN scoring IS NULL THEN 0
		ELSE scoring 
	END AS scoring,
	engagement_score,
	whatsapp,
	amostras,
	proposta,
	compra
FROM bronze.leads
 



-- Carregamentos dos dados da tabela 'vendas' para a camada silver

TRUNCATE TABLE silver.vendas;
INSERT INTO silver.vendas (
	vendas_index,
	vendas_chave_transacao,
	vendas_source,
	vendas_data_transacao,
	vendas_estado,
	vendas_regiao,
	vendas_cliente,
	vendas_cliente_chave,
	vendas_segmento,	
	vendas_id_produto,
	vendas_produto,
	vendas_preco,
	vendas_custo,
	vendas_desconto,
	vendas_quantidade,
	vendas_total1,
	vendas_total2
)
SELECT
	[index],
	venda_chave,
	CASE
		WHEN fonte = 'mkt' THEN 'Marketing' 
		ELSE 'Base Clientes' -- Quando houver dados nulos, será considerada a informação 'Base Clientes'
	END AS origem_cliente,
	data_venda,
	estado,
	regiao,
	Cliente,
	segmento,
	CONCAT(cliente_chave, '-', estado) AS cliente_chave, -- Juntando o código do cliente com o Estado para formar um código único
	id_produto,
	produto,
	preco/100 AS preco_unitario, -- Transformando o preço para valor unitário
	custo/100 as custo_unitario, -- Transformando o custo para valor unitário
	desconto,
	quantidade,
	CASE 
		WHEN preco * quantidade / 100 = total_venda/100 THEN total_venda / 100
		ELSE preco * quantidade / 100
	END AS total_venda1, -- O valor total da venda precisa ser o preço * quantidade, esse será o valor considerado correto.
	total
 FROM bronze.vendas
	
END TRY
	BEGIN CATCH
	 	PRINT '=========================================='
		PRINT 'Erro durante o load para camada silver'
		PRINT 'Erro' + ERROR_MESSAGE();
		PRINT 'Erro' + CAST (ERROR_NUMBER() AS NVARCHAR);
		PRINT 'Erro' + CAST (ERROR_STATE() AS NVARCHAR);
		PRINT '=========================================='
	END CATCH	










	
