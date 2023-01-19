INSERT INTO cxcommerce.cliente (nome, cpf) VALUES ('Guilherme','40963547265');
INSERT INTO cxcommerce.cliente (nome, cpf) VALUES ('Paulo','38526416235');
INSERT INTO cxcommerce.cliente (nome, cpf) VALUES ('Julia','41468534263');

INSERT INTO cxcommerce.endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES ('16400320','Rua São Francisco','156','Penha','São Paulo','SP',(SELECT id FROM cxcommerce.cliente WHERE cpf='40963547265'));
INSERT INTO cxcommerce.endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES ('13520054','Rua Dominicanos','57','Pampulha','Belo Horizonte','MG',(SELECT id FROM cxcommerce.cliente WHERE cpf='38526416235'));
INSERT INTO cxcommerce.endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES ('35640145','Rua Xavier Sigaud','354','Urca','Rio de Janeiro','RJ',(SELECT id FROM cxcommerce.cliente WHERE cpf='41468534263'));
INSERT INTO cxcommerce.endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES ('24756243','Rua Jorge Mussi','414','Canasvieiras','Florianópolis','SC',(SELECT id FROM cxcommerce.cliente WHERE cpf='40963547265'));
INSERT INTO cxcommerce.endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES ('86031140','Rua Paulo Pontes','253','Esperança','Londrina','PR',(SELECT id FROM cxcommerce.cliente WHERE cpf='38526416235'));
INSERT INTO cxcommerce.endereco (cep, logradouro, numero, bairro, cidade, uf, cliente_id) VALUES ('32545612','Rua Santo Amaro','865','Serraria','Maceió','AL',(SELECT id FROM cxcommerce.cliente WHERE cpf='41468534263'));

INSERT INTO cxcommerce.carrinho (data_hora, total, cliente_id) VALUES ('2023-01-14 10:24:00.0000', 155.90, (SELECT id FROM cxcommerce.cliente WHERE cpf='38526416235'));
INSERT INTO cxcommerce.carrinho (data_hora, total, cliente_id) VALUES ('2023-01-04 14:44:00.0000', 414.90, (SELECT id FROM cxcommerce.cliente WHERE cpf='40963547265'));
INSERT INTO cxcommerce.carrinho (data_hora, total, cliente_id) VALUES ('2023-01-12 18:28:00.0000', 214.90, (SELECT id FROM cxcommerce.cliente WHERE cpf='41468534263'));
INSERT INTO cxcommerce.carrinho (data_hora, total, cliente_id) VALUES ('2023-01-05 21:19:00.0000', 603.90, (SELECT id FROM cxcommerce.cliente WHERE cpf='41468534263'));
INSERT INTO cxcommerce.carrinho (data_hora, total, cliente_id) VALUES ('2023-01-17 12:32:00.0000', 89.90, (SELECT id FROM cxcommerce.cliente WHERE cpf='40963547265'));

INSERT INTO cxcommerce.produto (nome, sku) VALUES ('Mesa','1');
INSERT INTO cxcommerce.produto (nome, sku) VALUES ('Gaveta','2');
INSERT INTO cxcommerce.produto (nome, sku) VALUES ('Estojo','3');
INSERT INTO cxcommerce.produto (nome, sku) VALUES ('Relógio de mesa','4');
INSERT INTO cxcommerce.produto (nome, sku) VALUES ('Teclado','5');
INSERT INTO cxcommerce.produto (nome, sku) VALUES ('Mouse','6');

INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (400.00, (SELECT id FROM cxcommerce.produto WHERE sku='1'), (SELECT id FROM cxcommerce.cliente WHERE cpf='40963547265'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (300.00, (SELECT id FROM cxcommerce.produto WHERE sku='1'), (SELECT id FROM cxcommerce.cliente WHERE cpf='41468534263'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (70.00, (SELECT id FROM cxcommerce.produto WHERE sku='2'), (SELECT id FROM cxcommerce.cliente WHERE cpf='41468534263'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (50.00, (SELECT id FROM cxcommerce.produto WHERE sku='2'), (SELECT id FROM cxcommerce.cliente WHERE cpf='40963547265'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (10.00, (SELECT id FROM cxcommerce.produto WHERE sku='3'), (SELECT id FROM cxcommerce.cliente WHERE cpf='38526416235'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (15.00, (SELECT id FROM cxcommerce.produto WHERE sku='3'), (SELECT id FROM cxcommerce.cliente WHERE cpf='40963547265'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (60.00, (SELECT id FROM cxcommerce.produto WHERE sku='4'), (SELECT id FROM cxcommerce.cliente WHERE cpf='40963547265'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (45.00, (SELECT id FROM cxcommerce.produto WHERE sku='4'), (SELECT id FROM cxcommerce.cliente WHERE cpf='38526416235'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (250.00, (SELECT id FROM cxcommerce.produto WHERE sku='5'), (SELECT id FROM cxcommerce.cliente WHERE cpf='41468534263'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (199.90, (SELECT id FROM cxcommerce.produto WHERE sku='5'), (SELECT id FROM cxcommerce.cliente WHERE cpf='40963547265'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (150.00, (SELECT id FROM cxcommerce.produto WHERE sku='6'), (SELECT id FROM cxcommerce.cliente WHERE cpf='38526416235'));
INSERT INTO cxcommerce.preco (valor, produto_id, cliente_id) VALUES (170.00, (SELECT id FROM cxcommerce.produto WHERE sku='6'), (SELECT id FROM cxcommerce.cliente WHERE cpf='41468534263'));

