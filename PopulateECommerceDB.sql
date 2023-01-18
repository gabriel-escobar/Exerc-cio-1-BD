INSERT INTO produto (sku, nome, preco) VALUES ('p001', 'Produto 1', 10.00);
INSERT INTO produto (sku, nome, preco) VALUES ('p002', 'Produto 2', 20.00);
INSERT INTO produto (sku, nome, preco) VALUES ('p003', 'Produto 3', 30.00);
INSERT INTO produto (sku, nome, preco) VALUES ('p004', 'Produto 4', 40.00);
INSERT INTO produto (sku, nome, preco) VALUES ('p005', 'Produto 5', 50.00);
INSERT INTO produto (sku, nome, preco) VALUES ('p006', 'Produto 6', 60.00);

INSERT INTO cliente (cpf, nome) VALUES ('12345678901', 'Cliente 1');
INSERT INTO cliente (cpf, nome) VALUES ('23456789012', 'Cliente 2');
INSERT INTO cliente (cpf, nome) VALUES ('34567890123', 'Cliente 3');

INSERT INTO endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id)
VALUES ('12345678', 'Rua 1', '1', 'Bairro 1', 'Cidade 1', 'SP', 1);
INSERT INTO endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id)
VALUES ('23456789', 'Rua 2', '2', 'Bairro 2', 'Cidade 2', 'SP', 1);
INSERT INTO endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id)
VALUES ('34567890', 'Rua 3', '3', 'Bairro 3', 'Cidade 3', 'SP', 2);
INSERT INTO endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id)
VALUES ('45678901', 'Rua 4', '4', 'Bairro 4', 'Cidade 4', 'SP', 2);
INSERT INTO endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id)
VALUES ('56789012', 'Rua 5', '5', 'Bairro 5', 'Cidade 5', 'SP', 3);
INSERT INTO endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id)
VALUES ('67890234', 'Rua 6', '6', 'Bairro 6', 'Cidade 6', 'SP', 3);

INSERT INTO carrinho (datahora, total, cliente_id)
VALUES (NOW(), 90.00, 1);

INSERT INTO carrinho (datahora, total, cliente_id)
VALUES (NOW(), 70.00, 2);

INSERT INTO carrinho (datahora, total, cliente_id)
VALUES (NOW(), 100.00, 3);


INSERT INTO item (quantidade, total, produto_id, carrinho_id)
VALUES (1, 10.00, 1, 1);
INSERT INTO item (quantidade, total, produto_id, carrinho_id)
VALUES (2, 80.00, 4, 1);
INSERT INTO item (quantidade, total, produto_id, carrinho_id)
VALUES (1, 40.00, 4, 2);
INSERT INTO item (quantidade, total, produto_id, carrinho_id)
VALUES (1, 30.00, 3, 2);
INSERT INTO item (quantidade, total, produto_id, carrinho_id)
VALUES (1, 40.00, 4, 3);
INSERT INTO item (quantidade, total, produto_id, carrinho_id)
VALUES (2, 60.00, 3, 3);
