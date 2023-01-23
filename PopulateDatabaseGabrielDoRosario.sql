DROP DATABASE IFI EXISTS CXCommerce;

CREATE DATABASE IF NOT EXISTS CXCommerce;

use database if not exists CXCommerce

----- PRODUTO

INSERT INTO cxcommerce.PRODUTO (sku, nome) VALUES ('sabão_1''Sabão');
INSERT INTO cxcommerce.PRODUTO (sku, nome) VALUES ('detergernte_2''Detergente');
INSERT INTO cxcommerce.PRODUTO (sku, nome) VALUES ('palha_de_aco_3''Palha de Aco');
INSERT INTO cxcommerce.PRODUTO (sku, nome) VALUES ('amaciante_4''Amaciante 5L');
INSERT INTO cxcommerce.PRODUTO (sku, nome) VALUES ('papel_toalha_5''Papel toalha');
INSERT INTO cxcommerce.PRODUTO (sku, nome) VALUES ('papel_higienico_6''Papel Higienico');

----- PRECO

INSERT INTO cxcommerce.PRECO (PRODUTO_id,CLIENTE_id, valor) VALUES ('1''1''5.00');
INSERT INTO cxcommerce.PRECO (PRODUTO_id,CLIENTE_id, valor) VALUES ('2''1''4.00');
INSERT INTO cxcommerce.PRECO (PRODUTO_id,CLIENTE_id, valor) VALUES ('3''1''7.00');

INSERT INTO cxcommerce.PRECO (PRODUTO_id,CLIENTE_id, valor) VALUES ('4''2''30.00');
INSERT INTO cxcommerce.PRECO (PRODUTO_id,CLIENTE_id, valor) VALUES ('5''2''6.00');
INSERT INTO cxcommerce.PRECO (PRODUTO_id,CLIENTE_id, valor) VALUES ('6''2''15.00');

INSERT INTO cxcommerce.PRECO (PRODUTO_id,CLIENTE_id, valor) VALUES ('2''3''4.00');
INSERT INTO cxcommerce.PRECO (PRODUTO_id,CLIENTE_id, valor) VALUES ('4''3''30.00');
INSERT INTO cxcommerce.PRECO (PRODUTO_id,CLIENTE_id, valor) VALUES ('6''3''15.00');

----- CLIENTE

INSERT INTO cxcommerce.CLIENTE (cpf, nome) VALUES ('00011122233' 'Matheus');
INSERT INTO cxcommerce.CLIENTE (cpf, nome) VALUES ('00011122244' 'Adriele');
INSERT INTO cxcommerce.CLIENTE (cpf, nome) VALUES ('00011122255' 'Gabriel');

----- ENDERECO

INSERT INTO cxcommerce.ENDERECO (cep, logradouro, bairro, cidade, numero, uf, CLIENTE_id) 
     VALUES ('11112222' 'Rua Canadá, 23' 'Emboguacu' 'Curitiba' 'PR' '1');
INSERT INTO cxcommerce.ENDERECO (cep, logradouro, bairro, cidade, numero, uf, CLIENTE_id)
     VALUES ('11113333' 'Rua Centro, 24' 'Embocui' 'Curitiba' 'PR' '1');

INSERT INTO cxcommerce.ENDERECO (cep, logradouro, bairro, cidade, numero, uf, CLIENTE_id) 
     VALUES ('22223333' 'Rua Cambe, 25' 'Vila Garcia' 'Curitiba' 'PR' '2');
INSERT INTO cxcommerce.ENDERECO (cep, logradouro, bairro, cidade, numero, uf, CLIENTE_id)
     VALUES ('11112222' 'Rua Floriano, 26' 'Vila Primavera' 'Curitiba' 'PR' '2');

INSERT INTO cxcommerce.ENDERECO (cep, logradouro, bairro, cidade, numero, uf, CLIENTE_id) 
     VALUES ('11112222' 'Rua Miguel Caluf 27' 'Portão' 'Curitiba' 'PR' '3');
INSERT INTO cxcommerce.ENDERECO (cep, logradouro, bairro, cidade, numero, uf, CLIENTE_id)
     VALUES ('11112222' 'Rua Primavera 28' 'Beterrabas' 'Curitiba' 'PR' '3');

----- CARRINHO

INSERT INTO cxcommerce.CARRINHO_DE_COMPRA (data_hora, total, CLIENTE_id) VALUES ('2022-01-24 12:30:14''0.00''1');
INSERT INTO cxcommerce.CARRINHO_DE_COMPRA (data_hora, total, CLIENTE_id) VALUES ('2022-02-17 00-48-56''0.00''1');

INSERT INTO cxcommerce.CARRINHO_DE_COMPRA (data_hora, total, CLIENTE_id) VALUES ('2020-03-11 08-12-32''0.00''2');
INSERT INTO cxcommerce.CARRINHO_DE_COMPRA (data_hora, total, CLIENTE_id) VALUES ('2020-04-04 20-24-10''0.00''2');  

INSERT INTO cxcommerce.CARRINHO_DE_COMPRA (data_hora, total, CLIENTE_id) VALUES ('2018-05-31 04-36-20''0.00''3');
INSERT INTO cxcommerce.CARRINHO_DE_COMPRA (data_hora, total, CLIENTE_id) VALUES ('2018-06-18 16-48-30''0.00''3');

----- ITEM

INSERT INTO cxcommerce.ITEM (quantidade, PRECO_id, PRODUTO_id, CARRINHO_id) VALUES (1,1,1,1);
INSERT INTO cxcommerce.ITEM (quantidade, PRECO_id, PRODUTO_id, CARRINHO_id) VALUES (2,2,2,1);

INSERT INTO cxcommerce.ITEM (quantidade, PRECO_id, PRODUTO_id, CARRINHO_id) VALUES (3,3,3,2);
INSERT INTO cxcommerce.ITEM (quantidade, PRECO_id, PRODUTO_id, CARRINHO_id) VALUES (4,4,4,2);

INSERT INTO cxcommerce.ITEM (quantidade, PRECO_id, PRODUTO_id, CARRINHO_id) VALUES (5,5,5,3);
INSERT INTO cxcommerce.ITEM (quantidade, PRECO_id, PRODUTO_id, CARRINHO_id) VALUES (6,6,6,3);

UPDATE cvc


