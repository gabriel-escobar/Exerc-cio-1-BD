-- Deleta o banco de dados caso ele exista (inicia sempre do zero)
DROP DATABASE IF EXISTS ecommerce;

-- Cria o banco de dados
CREATE DATABASE ecommerce;
USE ecommerce;

-- Cria a Tabela Produto
CREATE TABLE produto (
  id INT(11) NOT NULL AUTO_INCREMENT,
  sku VARCHAR(50) NOT NULL UNIQUE,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id)
);

-- Cria a Tabela Item
CREATE TABLE item (
  id INT(11) NOT NULL AUTO_INCREMENT,
  quantidade INT(11) NOT NULL,
  total DECIMAL(6,2) NOT NULL,
  produto_id INT(11) NOT NULL,
  carrinho_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (produto_id) REFERENCES produto(id),
  FOREIGN KEY (carrinho_id) REFERENCES carrinho(id)
);

-- Cria a Tabela Cliente 
CREATE TABLE cliente (
  id INT(11) NOT NULL AUTO_INCREMENT,
  cpf VARCHAR(11) NOT NULL UNIQUE,
  nome VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

-- Cria a Tabela Carrinho
CREATE TABLE carrinho (
  id INT(11) NOT NULL AUTO_INCREMENT,
  datahora DATETIME NOT NULL,
  total DECIMAL(6,2) NOT NULL,
  cliente_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

-- Cria a Tabela endereco
CREATE TABLE endereco (
  id INT(11) NOT NULL AUTO_INCREMENT,
  cep VARCHAR(8) NOT NULL,
  logradouro VARCHAR(100) NOT NULL,
  numero VARCHAR(20) NOT NULL,
  bairro VARCHAR(100) NOT NULL,
  cidade VARCHAR(100) NOT NULL,
  uf VARCHAR(2) NOT NULL,
  cliente_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);