
SELECT TP.SABOR, NF.DATA_VENDA, INF.QUANTIDADE FROM tabela_de_produtos TP INNER JOIN itens_notas_fiscais INF ON 
TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO;

/* QUANTIDADE VENDIDA POR SABOR ANO 2016 */
SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos TP INNER JOIN 
itens_notas_fiscais INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA) ORDER BY SUM(INF.QUANTIDADE) DESC;

SELECT YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos TP INNER JOIN 
itens_notas_fiscais INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA) ORDER BY SUM(INF.QUANTIDADE) DESC;

/* QUANTIDADE VENDIDA POR SABOR ANO 2016 */

SELECT * FROM
(SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos TP INNER JOIN 
itens_notas_fiscais INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)) AS VENDA_SABOR
INNER JOIN
(SELECT YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos TP INNER JOIN 
itens_notas_fiscais INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)) AS VENDA_TOTAL ON VENDA_SABOR.ANO = VENDA_TOTAL.ANO;

SELECT VENDA_SABOR.SABOR, VENDA_SABOR.ANO, VENDA_SABOR.QUANTIDADE,
ROUND((VENDA_SABOR.QUANTIDADE/VENDA_TOTAL.QUANTIDADE) * 100, 2) AS PARTICIPACAO FROM
(SELECT TP.SABOR, YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos TP INNER JOIN 
itens_notas_fiscais INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA_VENDA)) AS VENDA_SABOR
INNER JOIN
(SELECT YEAR(NF.DATA_VENDA) AS ANO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM tabela_de_produtos TP INNER JOIN 
itens_notas_fiscais INF ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO WHERE YEAR(NF.DATA_VENDA) = 2016
GROUP BY YEAR(NF.DATA_VENDA)) AS VENDA_TOTAL ON VENDA_SABOR.ANO = VENDA_TOTAL.ANO
ORDER BY VENDA_SABOR.QUANTIDADE DESC;