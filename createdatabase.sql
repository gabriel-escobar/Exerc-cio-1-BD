CREATE DATABASE IF NOT EXISTS cxcommerce;

USE cxcommerce;

CREATE TABLE IF NOT EXISTS produto (
    id INT(11) PRIMARY KEY,
    sku VARCHAR(50),
    nome VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS cliente (
    id INT(11) PRIMARY KEY,
    cpf VARCHAR(11),
    nome VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS carrinho (
    id INT(11) PRIMARY KEY,
    datahora DATETIME,
    total DECIMAL(6,2),   
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente (id)
);

CREATE TABLE IF NOT EXISTS endereco (
    id INT(11) PRIMARY KEY,
    cep VARCHAR(8),
    logradouro VARCHAR(100),
    numero VARCHAR(20),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    uf VARCHAR(2),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);


CREATE TABLE IF NOT EXISTS preco (
    id INT(11) PRIMARY KEY,
    valor DECIMAL (6,2),
    produto_id INT,
    FOREIGN KEY (produto_id) REFERENCES produto(id),
    cliente_id INT,    	
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

CREATE TABLE IF NOT EXISTS item (
    id INT(11) PRIMARY KEY,
    quantidade INT(11),
    total DECIMAL(6,2),
    produto_id INT,
    FOREIGN KEY (produto_id) REFERENCES produto(id),
    preco_id INT,
    FOREIGN KEY (preco_id) REFERENCES preco(id),
    carrinho_id INT,  
    FOREIGN KEY (carrinho_id) REFERENCES carrinho(id)
);