CREATE DATABASE IF NOT EXISTS cxcommerce01;

USE cxcommerce01;


CREATE TABLE IF NOT EXISTS cliente (
    id INT(11) auto_increment not null,
    cpf CHAR(11),
    nome VARCHAR(100),
    PRIMARY KEY (id)
);
 
CREATE TABLE IF NOT EXISTS endereco (
    id INT(11) NOT NULL AUTO_INCREMENT,
    cep VARCHAR(8) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(20),
    bairro VARCHAR(100),
    cidade VARCHAR(100) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    cliente_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);


CREATE TABLE IF NOT EXISTS carrinho (
    id INT(11) NOT NULL AUTO_INCREMENT,
    datahora DATETIME NOT NULL,
    total DECIMAL(6, 2),
    cliente_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
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
    produto_id INT,
    FOREIGN KEY (produto_id) REFERENCES produto(id),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    PRIMARY KEY (id)   
);


CREATE TABLE IF NOT EXISTS item (
    id INT(11) NOT NULL AUTO_INCREMENT,
    quantidade INT(11) NOT NULL,
    total DECIMAL(6, 2),
    produto_id INT,
    FOREIGN KEY (produto_id) REFERENCES produto(id),
    preco_id INT,
    FOREIGN KEY (preco_id) REFERENCES preco(id),
    carrinho_id INT,
    FOREIGN KEY (carrinho_id) REFERENCES carrinho(id),
    PRIMARY KEY (id)
 );