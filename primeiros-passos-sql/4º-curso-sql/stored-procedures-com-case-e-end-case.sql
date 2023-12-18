
SELECT DISTINCT SABOR FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '1000889';

SELECT * FROM tabela_de_produtos;

CALL acha_sabor_produto('1000889');

CALL acha_tipo_sabor_erro('1004327');

CALL acha_status_preco_case('1004327');