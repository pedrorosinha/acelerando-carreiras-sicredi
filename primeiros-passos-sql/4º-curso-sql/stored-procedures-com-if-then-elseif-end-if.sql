
SELECT * FROM tabela_de_produtos;

-- >= 12.00 ------ CARO
-- >= 7 E 12 EM CONTA
-- < 7 BARATO

SELECT PRECO_DE_LISTA FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '1000889';

call acha_status_preco ('326779');