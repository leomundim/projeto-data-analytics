-- Carregamento dos dados das tabelas ads, leads e vendas da camada bronze, para a camada silver.
-- Limpeza e normalização de dados.

BEGIN TRY

  -- Carregamentos dos dados da tabela 'ads' para a camada silver
  
TRUNCATE TABLE silver.ads;
INSERT INTO silver.ads(
	ads_data,
	ads_midia,
	ads_valor,
	ads_mes,
	ads_ano,
	ads_campanha
)
SELECT
	data_ads,
	midia,
	valor,
	mês,
	ano,
	campanha
FROM bronze.ads


-- Carregamentos dos dados da tabela 'leads' para a camada silver

TRUNCATE TABLE silver.leads;
INSERT INTO silver.leads(
	lead_ID,
	lead_fonte,
	lead_status,
	lead_scoring,
	lead_engajamento,
	lead_datacriacao,
	lead_dataconversao
)
SELECT 
	ID_lead,
	fonte_do_lead,
	status_atual,
	CASE 
		WHEN scoring IS NULL THEN 0
		ELSE scoring 
	END AS scoring,
	engagement_score,
	data_de_criação,
	CASE
		WHEN data_de_conversão IS NULL then data_de_criação
		ELSE data_de_conversão
	END as data_de_conversão_ajustada
	-- Quando a data de conversão estiver vazia, será considerado a data de criação como data de conversão, 
	-- visto que na maior parte dos casos, os leads são convertidos no mesmo dia.
FROM bronze.leads
WHERE data_de_criação IS NOT NULL 



-- Carregamentos dos dados da tabela 'vendas' para a camada silver

TRUNCATE TABLE silver.vendas;
INSERT INTO silver.vendas (
	vendas_index,
	vendas_chave_transacao,
	vendas_data_transacao,
	vendas_estado,
	vendas_regiao,
	vendas_cliente,
	vendas_segmento,
	vendas_cliente_chave,
	vendas_id_produto,
	vendas_produto,
	vendas_preco,
	vendas_custo,
	vendas_desconto,
	vendas_quantidade,
	vendas_total
)
SELECT
	[index],
	venda_chave,
	data_venda,
	estado,
	regiao,
	LTRIM(SUBSTRING(cliente, CHARINDEX(' ', cliente) + 1, LEN(cliente))) AS cliente, -- Ajuste de texto para manter somente o nome
	segmento,
	cliente_chave,
	id_produto,
	produto,
	preco/100 AS preco_unitario, -- Transformando o preço para valor unitário
	custo/100 as custo_unitario, -- Transoformando o custo para valor unitário
	desconto,
	quantidade,
	CASE 
		WHEN preco * quantidade / 100 = total_venda/100 THEN total_venda / 100
		ELSE preco * quantidade / 100
	END AS total_venda2 -- O valor total da venda precisa ser o preço * quantidade, esse será o valor considerado correto.
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










	
