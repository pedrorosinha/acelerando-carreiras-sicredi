
USE vendas_sucos;

CREATE TABLE itens_notas
(NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
QUANTIDADE INT,
PRECO FLOAT,
PRIMARY KEY (NUMERO, CODIGO));

ALTER TABLE itens_notas ADD CONSTRAINT FK_NOTAS FOREIGN KEY (NUMERO) REFERENCES NOTAS (NUMERO);

ALTER TABLE itens_notas ADD CONSTRAINT FK_PRODUTOS FOREIGN KEY (CODIGO) REFERENCES PRODUTOS (CODIGO);