

-- 	(ALEATORIO() * (MAX-MIN+)) + MIN
-- MIN = 15, MAX = 300
SELECT FLOOR((RAND() * (300-15+1)) + 15);

SELECT f_numero_aleatorio(1, 10);

SELECT COUNT(*) FROM tabela_de_clientes;

SELECT * FROM tabela_de_clientes LIMIT 12,1;
-- 50534475787

SELECT * FROM tabela_de_clientes LIMIT 15,1;

SELECT * FROM tabela_de_clientes LIMIT 1,1;

SELECT f_cliente_aleatorio(), f_produto_aleatorio(), f_vendedor_aleatorio();

SELECT MAX(NUMERO) + 1 FROM notas_fiscais;

SELECT * FROM tabela_de_produtos;

SELECT PRECO_DE_LISTA FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '1000889';

call p_inserir_venda('20230929', 100, 100);

SELECT A.NUMERO, COUNT(*) AS NUMERO_ITENS, SUM(B.QUANTIDADE * B.PRECO) AS FATURADO
FROM notas_fiscais A INNER JOIN itens_notas_fiscais B
ON A.NUMERO = B.NUMERO WHERE A.DATA_VENDA = '20230929'
GROUP BY A.NUMERO;