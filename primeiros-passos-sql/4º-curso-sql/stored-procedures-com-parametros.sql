
SELECT * FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '4000001';

call inclui_novo_produto_parametro('4000003', 'Sabor do Pantanal 1 Litro - Melancia', 
'Melancia', '1 Litro', 'PET', 4.76);

SELECT SABOR FROM tabela_de_produtos WHERE CODIGO_DO_PRODUTO = '4000001';

call acha_sabor_produto('1013793');

SELECT * FROM tabela_de_produtos;