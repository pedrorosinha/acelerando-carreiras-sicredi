
SELECT CURDATE();

SELECT CURRENT_TIME();

SELECT CURRENT_TIMESTAMP();

SELECT YEAR(CURRENT_TIMESTAMP());

SELECT DAY(CURRENT_TIMESTAMP());

SELECT MONTH(CURRENT_TIMESTAMP());

SELECT MONTHNAME(CURRENT_TIMESTAMP());

SELECT DATEDIFF(CURRENT_TIMESTAMP(), '2023-01-01') AS RESULTADO;

SELECT DATEDIFF(CURRENT_TIMESTAMP(), '2005-12-22') AS RESULTADO;

SELECT CURRENT_TIMESTAMP() AS DIA_HOJE, DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL 5 DAY) AS RESULTADO; 

SELECT DISTINCT DATA_VENDA,
DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES, YEAR(DATA_VENDA) AS ANO FROM notas_fiscais;