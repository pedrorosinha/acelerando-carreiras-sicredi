
call teste_select_into();

call cursor_primeiro_contato;

SELECT NOME FROM tabela_de_clientes LIMIT 4;

call cursor_looping;

SELECT * FROM tabela_de_clientes;

call looping_cursor_multiplas_colunas;

SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_acha_tipo_sabor ("Laranja");

SELECT NOME_DO_PRODUTO, SABOR, f_acha_tipo_sabor (SABOR) AS TIPO 
FROM tabela_de_produtos;

SELECT NOME_DO_PRODUTO, SABOR FROM tabela_de_produtos WHERE f_acha_tipo_sabor (SABOR) = 'Neutro';

SELECT CONCAT(NOME_DO_PRODUTO, ' ', SABOR) FROM tabela_de_produtos;