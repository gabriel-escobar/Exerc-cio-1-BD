USE cxcommerce;

INSERT INTO cliente (id, cpf, nome) 
VALUES 
	(1, '12345678900', 'Lara da Silva'),
	(2, '01234567891', 'Luca Cararra'),
	(3, '23456789123', 'Vera Lima');

INSERT INTO endereco 
	(id, cep, logradouro, numero, bairro, cidade, uf, cliente_id)
VALUES 
	(1, '15540000', 'Rua Alagoas', '263', 'Centro', 'Álvares Florence', 'SP', 1),
	(2, '83420000', 'Rua João Knapik', '44', 'Jardim Patrícia', 'Quatro Barras', 'PR', 2),
	(3, '22011040', 'Avenida Prado Júnior', '165', 'Copacabana', 'Rio de Janeiro', 'RJ', 3),
	(4, '15502050', 'Rua Guaporé', '2450', 'San Remo', 'Votuporanga', 'SP', 1),
	(5, '49035310', 'Rua Euclides Góis', '1166', 'Atalaia', 'Aracajú', 'SE', 3),
	(6, '83350000', 'Rua Luís Brambila', '189', 'Vila Santo Antonio', 'Morretes', 'PR', 2);

INSERT INTO carrinho 
	(id, datahora, total, cliente_id) 
VALUES 
	(1, '2023-01-16 13:01:00', 15, 3),
	(2, '2023-01-18 16:45:00', 20, 2),
	(3, '2023-01-18 08:23:00', 130, 1),
	(4, '2023-01-19 01:09:00', 70, 1),
	(5, '2023-01-20 14:03:00', 80, 2),
	(6, '2023-01-22 12:37:00', 9, 3);

INSERT INTO produto 
	(id, sku, nome) 
VALUES 	
	(1, 'L001', 'Sabão em Pó'),	
	(2, 'L002', 'Detergente'),
	(3, 'L003', 'Desinfetante'),
	(4, 'F001', 'Molho de tomate'),	
	(5, 'F002', 'Azeite'),
	(6, 'F003', 'Macarrão instantâneo');

INSERT INTO preco 
	(id, valor, produto_id, cliente_id) 
VALUES
 	(1, 13, 1, 1),
	(2, 11, 1, 2),
	(3, 09, 1, 3),
	(4, 02, 2, 1),
	(5, 08, 3, 3),
	(6, 05, 4, 3),
	(7, 45, 5, 1),
	(8, 53, 5, 2),
	(9, 03, 6, 1);

INSERT INTO item 
	(id, quantidade, total, produto_id, preco_id, carrinho_id) 
VALUES 
	(1, 1, 13, 1, 3, 1),
    (2, 1, 02, 1, 3, 1),
	(3, 90, 40, 2, 3, 2),
	(4, 12, 90, 3, 2, 3),
	(5, 10, 10, 1, 4, 4),
	(6, 08, 50, 2, 5, 5),
	(7, 30, 07, 3, 6, 6);
