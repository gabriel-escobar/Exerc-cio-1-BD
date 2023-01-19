DROP DATABASE IF EXISTS cxcommerce;

CREATE DATABASE cxcommerce;

USE cxcommerce;

CREATE TABLE IF NOT EXISTS cliente (
	id INT(11) NOT NULL AUTO_INCREMENT,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	nome VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS endereco (
	id INT(11) NOT NULL AUTO_INCREMENT,
	cep VARCHAR(9) NOT NULL,
	logradouro VARCHAR(100),
	numero VARCHAR(20),
	bairro VARCHAR(100),
	cidade VARCHAR(100),
	uf VARCHAR(2),
	PRIMARY KEY(id),
	FOREIGN KEY (cliente_id) REFERENCES cxcommerce.cliente (id) 

);

CREATE TABLE IF NOT EXISTS carrinho (
	id INT(11) NOT NULL AUTO_INCREMENT,
	data_hora DATETIME NOT NULL,
	total DECIMAL(6,2),
	PRIMARY KEY(id),
	FOREIGN KEY (cliente_id) REFERENCES cxcommerce.cliente (id)

);

CREATE TABLE IF NOT EXISTS produto (
	id INT(11) NOT NULL AUTO_INCREMENT,
	sku VARCHAR(50) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)

);

CREATE TABLE IF NOT EXISTS preco (
	id INT(11) NOT NULL AUTO_INCREMENT,
	valor DECIMAL(6,2) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (cliente_id) REFERENCES cxcommerce.cliente (id),
	FOREIGN KEY (produto_id) REFERENCES cxcommerce.produto (id)

);

CREATE TABLE IF NOT EXISTS item (
	id INT(11) NOT NULL AUTO_INCREMENT,
	quantidade INT(11) NOT NULL,
	total DECIMAL(6,2) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (produto_id) REFERENCES cxcommerce.produto (id),
	FOREIGN KEY (preco_id) REFERENCES cxcommerce.preco (id),
	FOREIGN KEY (carrinho_id) REFERENCES cxcommerce.carrinho (id)

);
