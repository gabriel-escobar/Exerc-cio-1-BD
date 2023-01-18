DROP DATABASE IF EXISTS cxcommerce;

CREATE DATABASE IF NOT EXISTS cxcommerce;

USE cxcommerce;

CREATE TABLE IF NOT EXISTS cxcommerce.produto(
    id INT(11) NOT NULL AUTO_INCREMENT,
    sku VARCHAR(50) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS cxcommerce.cliente(
    id INT(11) NOT NULL AUTO_INCREMENT,
    cpf VARCHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS cxcommerce.endereco(
    id INT(11) NOT NULL AUTO_INCREMENT,
    cep CHAR(8),
    logradouro VARCHAR(100),
    numero VARCHAR(20),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    uf CHAR(2),
    cliente_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES cxcommerce.cliente (id)  
);

CREATE TABLE IF NOT EXISTS cxcommerce.preco(
    id INT(11) NOT NULL AUTO_INCREMENT,
    valor DECIMAL(6,2) NOT NULL,
    produto_id INT(11) NOT NULL,
    cliente_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (produto_id) REFERENCES cxcommerce.produto (id),
    FOREIGN KEY (cliente_id) REFERENCES cxcommerce.cliente (id)
);

CREATE TABLE IF NOT EXISTS cxcommerce.carrinho(
    id INT(11) NOT NULL AUTO_INCREMENT,
    data_hora DATETIME NOT NULL,
    total DECIMAL(6,2) ,
    cliente_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES cxcommerce.cliente (id)
);

CREATE TABLE IF NOT EXISTS cxcommerce.item(
    id INT(11) NOT NULL AUTO_INCREMENT,
    quantidade INT (11) NOT NULL,
    total DECIMAL(6,2),
    produto_id INT(11) NOT NULL,
    preco_id INT(11) NOT NULL,
    carrinho_id INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (produto_id) REFERENCES cxcommerce.produto (id),
    FOREIGN KEY (preco_id) REFERENCES cxcommerce.preco (id),
    FOREIGN KEY (carrinho_id) REFERENCES cxcommerce.carrinho (id)
);

