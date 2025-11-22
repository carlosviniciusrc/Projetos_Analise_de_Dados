CREATE DATABASE Mercado_de_acoes;

USE Mercado_de_acoes;

CREATE TABLE acoes(
	Empresa VARCHAR(50) NOT NULL,
    Data DATE NOT NULL,
    Close DOUBLE NOT NULL,
    Volume BIGINT NOT NULL,
    Open  DOUBLE NOT NULL,
    High DOUBLE NOT NULL,
    Low DOUBLE NOT NULL
);

SELECT * FROM acoes