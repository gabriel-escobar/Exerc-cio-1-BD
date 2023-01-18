DROP DATABASE IF EXISTS cxcommerce;

CREATE DATABASE cxcommerce;

USE cxcommerce;


CREATE TABLE IF NOT EXISTS cliente (
    id INT(11) NOT NULL AUTO_INCREMENT,
    cpf CHAR(11) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS endereco (
    id INT(11) NOT NULL AUTO_INCREMENT,
    cep CHAR(8) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(20),
    bairro VARCHAR(100),
    cidade VARCHAR(100) NOT NULL,
    uf CHAR(2) NOT NULL,
    cliente_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES cliente (id)
);


CREATE TABLE IF NOT EXISTS carrinho (
    id INT(11) NOT NULL AUTO_INCREMENT,
    datahora DATETIME NOT NULL,
    total DECIMAL(6, 2),
    cliente_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES cliente (id)
);


CREATE TABLE IF NOT EXISTS produto (
    id INT(11) NOT NULL AUTO_INCREMENT,
    sku VARCHAR(50) NOT NULL UNIQUE,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS preco (
    id INT(11) NOT NULL AUTO_INCREMENT,
    valor DECIMAL(6, 2) NOT NULL,
    produto_id INT(11) NOT NULL,
    cliente_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (produto_id) REFERENCES produto (id),
    FOREIGN KEY (cliente_id) REFERENCES cliente (id)
);


CREATE TABLE IF NOT EXISTS item (
    id INT(11) NOT NULL AUTO_INCREMENT,
    quantidade INT(11) NOT NULL,
    total DECIMAL(6, 2),
    produto_id INT(11) NOT NULL,
    preco_id INT(11) NOT NULL,
    carrinho_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (produto_id) REFERENCES produto (id),
    FOREIGN KEY (preco_id) REFERENCES preco (id),
    FOREIGN KEY (carrinho_id) REFERENCES carrinho (id)
);
