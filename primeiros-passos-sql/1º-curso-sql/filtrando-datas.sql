
SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO = '1995-01-13';

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO <= '1995-01-13';

SELECT * FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 10;