CREATE DATABASE logistica_db;
USE logistica_db;

CREATE TABLE produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    peso_kg DECIMAL(10,2)
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    estado VARCHAR(2),
    cidade VARCHAR(80)
);

CREATE TABLE transportadora (
    id_transportadora INT PRIMARY KEY,
    nome VARCHAR(100),
    cnpj VARCHAR(20),
    uf_base VARCHAR(2)
);

CREATE TABLE tempo (
    id_tempo INT PRIMARY KEY,
    data_entrega DATE,
    ano INT,
    mes INT,
    dia INT
);

CREATE TABLE entregas (
    id_entrega INT PRIMARY KEY,
    id_produto INT,
    id_cliente INT,
    id_transportadora INT,
    id_tempo INT,
    quantidade INT,
    custo_frete DECIMAL(10,2),
    tempo_transporte_dias INT,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_transportadora) REFERENCES transportadora(id_transportadora),
    FOREIGN KEY (id_tempo) REFERENCES tempo(id_tempo)
);