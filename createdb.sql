CREATE DATABASE IF NOT EXISTS cxcommerce;

USE cxcommerce;


# Tabela produto
CREATE TABLE IF NOT EXISTS produto(
	id INT NOT NULL AUTO_INCREMENT,
	sku VARCHAR(50),
	nome VARCHAR(100),
	PRIMARY KEY (id)
);

# Tabela carrinho
CREATE TABLE IF NOT EXISTS carrinho (
	id INT NOT NULL AUTO_INCREMENT,
	datahora DATETIME ,
    total DECIMAL(6,2),
    cliente_id INT,
	PRIMARY KEY (id)
);

# Tabela item
CREATE TABLE IF NOT EXISTS item (
	id INT NOT NULL AUTO_INCREMENT,
	quantidade INT,
	total DECIMAL(6,2),
	produto_id INT,
	preco_id INT,
	carrinho_id INT,
	PRIMARY KEY (id)
);


#Tabela preco
CREATE TABLE IF NOT EXISTS preco (
	id INT NOT NULL AUTO_INCREMENT,
	valor DECIMAL(6,2),
	produto_id INT,
	cliente_id INT,
    PRIMARY KEY (id)
); 

#Tabela cliente
CREATE TABLE IF NOT EXISTS cliente (
	id INT NOT NULL AUTO_INCREMENT,
	cpf VARCHAR(11),
	nome VARCHAR(100),
    PRIMARY KEY (id)
); 

#Tabela endereco
CREATE TABLE IF NOT EXISTS endereco (
	id INT NOT NULL AUTO_INCREMENT,
	logradouro VARCHAR(100),
    cep VARCHAR(8),
	numero VARCHAR(20),
	bairro VARCHAR(100),
	cidade VARCHAR(50),
	uf CHAR(2),
	cliente_id INT,
    PRIMARY KEY (id)
); 