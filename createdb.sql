CREATE DATABASE IF NOT EXISTS cxcommerce;

USE cxcommerce;


# Tabela produto
CREATE TABLE IF NOT EXISTS produto(
	id INT NOT NULL AUTO_INCREMENT,
	sku VARCHAR(50) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
);

#Tabela cliente
CREATE TABLE IF NOT EXISTS cliente (
	id INT NOT NULL AUTO_INCREMENT,
	cpf VARCHAR(11) NOT NULL,
	nome VARCHAR(100) NOT NULL unique,
    PRIMARY KEY (id)
); 

# Tabela carrinho
CREATE TABLE IF NOT EXISTS carrinho (
	id INT NOT NULL AUTO_INCREMENT,
	datahora DATETIME NOT NULL,
    total DECIMAL(6,2) NOT NULL,
    cliente_id INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (cliente_id) REFERENCES cliente (id)
);

#Tabela preco
CREATE TABLE IF NOT EXISTS preco (
	id INT NOT NULL AUTO_INCREMENT,
	valor DECIMAL(6,2) NOT NULL,
	produto_id INT NOT NULL,
	cliente_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (produto_id) REFERENCES produto (id),
    FOREIGN KEY (cliente_id) REFERENCES cliente (id)
); 

# Tabela item
CREATE TABLE IF NOT EXISTS item (
	id INT NOT NULL AUTO_INCREMENT,
	quantidade INT NOT NULL,
	total DECIMAL(6,2) NOT NULL,
	produto_id INT NOT NULL,
	preco_id INT NOT NULL,
	carrinho_id INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (produto_id) REFERENCES produto (id),
    FOREIGN KEY (preco_id) REFERENCES preco (id),
    FOREIGN KEY (carrinho_id) REFERENCES carrinho (id)
);


#Tabela endereco
CREATE TABLE IF NOT EXISTS endereco (
	id INT NOT NULL AUTO_INCREMENT,
	logradouro VARCHAR(100) NOT NULL,
    cep VARCHAR(8) NOT NULL,
	numero VARCHAR(20) NOT NULL,
	bairro VARCHAR(100) NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	uf CHAR(2) NOT NULL,
	cliente_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES cliente (id)
); 