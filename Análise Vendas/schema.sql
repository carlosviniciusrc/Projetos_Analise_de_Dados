CREATE DATABASE Empresa;

USE Empresa;

CREATE TABLE clientes(
	id_cliente VARCHAR(50) PRIMARY KEY NOT NULL,
	nome VARCHAR(150) NOT NULL,
	segmento VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(30),
	pais VARCHAR(50),
	mercado VARCHAR(20),
	regiao VARCHAR(30)
);

CREATE TABLE pedidos(
	id_pedido VARCHAR(50) NOT NULL PRIMARY KEY,
    data_pedido DATE,
	data_envio DATE,
    modo_envio VARCHAR(50),
    prioridade VARCHAR(50)
);

CREATE TABLE produtos(
	id_produto VARCHAR(50) PRIMARY KEY NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    subcategoria VARCHAR(30),
    nome_produto VARCHAR(200) NOT NULL
);

CREATE TABLE vendas(
    id_pedido VARCHAR(50) NOT NULL,
    id_cliente VARCHAR(50) NOT NULL,
    id_produto VARCHAR(50) NOT NULL,
    valor_venda DECIMAL (10,2) NOT NULL,
    quantidade_vendida INT NOT NULL,
    custo_envio DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);


