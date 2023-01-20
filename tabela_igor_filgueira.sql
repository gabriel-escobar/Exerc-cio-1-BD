CREATE DATABASE IF NOT EXISTS cxcommerce;

USE cxcommerce;

CREATE TABLE IF NOT EXISTS produto (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(50),
    nome VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS item (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    quantidade INT(11),
    total DECIMAL(6,2),
    produto_id INT(11) REFERENCES produto(id),
    preco_id INT(11) REFERENCES preco(id),
    carrinho_id INT(11) REFERENCES carrinho(id)
);


CREATE TABLE carrinho (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    datahora DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(6,2),
    cliente_id INT(11) REFERENCES cliente(id)
);


CREATE TABLE preco (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(6,2),
    produto_id INT(11) REFERENCES produto(id),
    cliente_id INT(11) REFERENCES cliente(id)
);


CREATE TABLE cliente (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(11),
    nome VARCHAR(100)
);


CREATE TABLE endereco (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    cep VARCHAR(8),
    logradouro VARCHAR(100),
    numero VARCHAR(20),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    uf VARCHAR(2),
    cliente_id INT(11) REFERENCES cliente(id)
);

CREATE TABLE endereco2 (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    cep VARCHAR(8),
    logradouro VARCHAR(100),
    numero VARCHAR(20),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    uf VARCHAR(2),
    cliente_id INT(11) REFERENCES cliente(id)
);