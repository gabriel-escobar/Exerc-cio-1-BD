DROP DATABASE IF EXISTS CreateDatabase;

CREATE DATABASE IF NOT EXISTS CreateDatabase;

USE CreateDatabase;

CREATE TABLE IF NOT EXISTS CreateDatabase.produto (
	id INT NOT NULL AUTO_INCREMENT,
	sku VARCHAR(50),
	nome VARCHAR(100),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS CreateDatabase.cliente (
	id INT NOT NULL AUTO_INCREMENT,
	cpf VARCHAR(11),
	nome VARCHAR(100),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS CreateDatabase.preco (
	id INT (11) NOT NULL AUTO_INCREMENT,
	valor DECIMAL(6,2),
	produto_id INT(11),
	cliente_id INT(11),
	PRIMARY KEY (id),
	FOREIGN KEY (produto_id) REFERENCES CreateDatabase.produto (id),
	FOREIGN KEY (cliente_id) REFERENCES CreateDatabase.cliente (id)
);


CREATE TABLE IF NOT EXISTS CreateDatabase.carrinho (
	id INT (11) NOT NULL AUTO_INCREMENT,
	datahora DATETIME,
	total DECIMAL(6,2),
	cliente_id INT(11),
	PRIMARY KEY (id),
	FOREIGN KEY (cliente_id) REFERENCES CreateDatabase.cliente (id)
);

CREATE TABLE IF NOT EXISTS CreateDatabase.item (
	id INT (11) NOT NULL AUTO_INCREMENT,
	quantidade INT(11),
	total DECIMAL(6,2),
	produto_id INT(11),
	preco_id INT(11),
	carrinho_id INT(11),
	PRIMARY KEY (id),
	FOREIGN KEY (produto_id) REFERENCES CreateDatabase.produto (id),
	FOREIGN KEY (preco_id) REFERENCES CreateDatabase.preco (id),
	FOREIGN KEY (carrinho_id) REFERENCES CreateDatabase.carrinho (id)
);


CREATE TABLE IF NOT EXISTS CreateDatabase.endereco (
	id INT (11) NOT NULL AUTO_INCREMENT,
	cep VARCHAR(8),
	numero VARCHAR(20),
	bairro VARCHAR(100),
	cidade VARCHAR(100),
	uf VARCHAR(2),
	cliente_id INT(11),
	PRIMARY KEY (id),
	FOREIGN KEY (cliente_id) REFERENCES CreateDatabase.cliente (id)
);
