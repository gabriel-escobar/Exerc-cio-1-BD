INSERT INTO cliente(id, cpf, nome) VALUES (1, '01234567890', 'José');
INSERT INTO cliente(id, cpf, nome) VALUES (2, '05647895321', 'Maria');
INSERT INTO cliente(id, cpf, nome) VALUES (3, '11547893245', 'João');

INSERT INTO produto(id, sku, nome) VALUES (123, '2354fgv23', 'Pendrive');
INSERT INTO produto(id, sku, nome) VALUES (456, '11885abgr', 'Placa-mãe');
INSERT INTO produto(id, sku, nome) VALUES (789, '773qwx3vb', 'Mouse');
INSERT INTO produto(id, sku, nome) VALUES (101, 'abv22548x', 'Carregador');
INSERT INTO produto(id, sku, nome) VALUES (121, 'vb1258ghc', 'Câmera');
INSERT INTO produto(id, sku, nome) VALUES (131, 'qwerf253d', 'Teclado');

INSERT INTO endereco(id, cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES (1, '80300900', 'Rua da hamburguer', 10, 'Jardim Botânico', 'Curitiba', 'PR', 1);
INSERT INTO endereco(id, cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES (2, '80300910', 'Rua da pizza', 22, 'Centro', 'Curitiba', 'PR', 1);
INSERT INTO endereco(id, cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES (3, '81300123', 'Rua do pão de queijo', 156, 'Juveve', 'Curitiba', 'PR', 2);
INSERT INTO endereco(id, cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES (4, '89056321', 'Rua do sushi', 987, 'Portão', 'Curitiba', 'PR', 2);
INSERT INTO endereco(id, cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES (5, '88452012', 'Rua da coxinha', 963, 'Centro cívico', 'Curitiba', 'PR', 3);
INSERT INTO endereco(id, cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES (6, '83985230', 'Rua do risoto', 3568, 'Santa felicidade', 'Curitiba', 'PR', 3);

INSERT INTO preco(id, valor, produto_id, cliente_id) VALUES (1, 100.00, 123, 1);
INSERT INTO preco(id, valor, produto_id, cliente_id) VALUES (2, 200.00, 789, 2);
INSERT INTO preco(id, valor, produto_id, cliente_id) VALUES (3, 50.00, 121, 3);

INSERT INTO carrinho(id, datahora, total, cliente_id) VALUES (1, '2023-01-02 15:33:10', 10, 1);
INSERT INTO carrinho(id, datahora, total, cliente_id) VALUES (2, '2022-12-24 08:22:08', 20, 2);
INSERT INTO carrinho(id, datahora, total, cliente_id) VALUES (3, '2022-09-12 05:20:33', 10, 3);

INSERT INTO item(id, quantidade, total, produto_id, preco_id, carrinho_id) VALUES (1, 10, 50, 123, 1, 1);
INSERT INTO item(id, quantidade, total, produto_id, preco_id, carrinho_id) VALUES (2, 100, 30, 456, 2, 2);
INSERT INTO item(id, quantidade, total, produto_id, preco_id, carrinho_id) VALUES (3, 40, 20, 789, 3, 3);

