USE CreateDatabase;

/*
Produto
*/
INSERT INTO CreateDatabase.produto (sku,nome) VALUES ('pv-475-89','Placa de video');
INSERT INTO CreateDatabase.produto (sku,nome) VALUES ('pm-758-35','Placa mãe');
INSERT INTO CreateDatabase.produto (sku,nome) VALUES ('fn-668-23','Fone de ouvido');
INSERT INTO CreateDatabase.produto (sku,nome) VALUES ('mr-234-78','Memoria Ram');
INSERT INTO CreateDatabase.produto (sku,nome) VALUES ('ft-158-43','Fonte');
INSERT INTO CreateDatabase.produto (sku,nome) VALUES ('pc-118-73','Processador');

/*
Cliente
*/

INSERT INTO CreateDatabase.cliente (cpf,nome) VALUES ('26789423568','João');
INSERT INTO CreateDatabase.cliente (cpf,nome) VALUES ('71235493817','Maria');
INSERT INTO CreateDatabase.cliente (cpf,nome) VALUES ('56741258346','Paulo');

/*
Preço
*/

INSERT INTO CreateDatabase.preco (valor,produto_id,cliente_id) VALUES ('85.50','1','1');
INSERT INTO CreateDatabase.preco (valor,produto_id,cliente_id) VALUES ('55.50','2','2');
INSERT INTO CreateDatabase.preco (valor,produto_id,cliente_id) VALUES ('20.00','3','3');

/*
Carrinho
*/

INSERT INTO CreateDatabase.carrinho (datahora,total,cliente_id) VALUES ('2023-01-02 09:36:00.0000','85.50','1');
INSERT INTO CreateDatabase.carrinho (datahora,total,cliente_id) VALUES ('2023-08-12 16:50:00.0000','55.50','2');
INSERT INTO CreateDatabase.carrinho (datahora,total,cliente_id) VALUES ('2022-10-06 18:20:00.0000','20.00','3');

/*
Item
*/

INSERT INTO CreateDatabase.item (quantidade,total,produto_id,preco_id,carrinho_id) VALUES ('5','5','1','1','1');
INSERT INTO CreateDatabase.item (quantidade,total,produto_id,preco_id,carrinho_id) VALUES ('2','1','2','2','1');
INSERT INTO CreateDatabase.item (quantidade,total,produto_id,preco_id,carrinho_id) VALUES ('3','2','3','3','2');
INSERT INTO CreateDatabase.item (quantidade,total,produto_id,preco_id,carrinho_id) VALUES ('2','3','2','2','2');
INSERT INTO CreateDatabase.item (quantidade,total,produto_id,preco_id,carrinho_id) VALUES ('1','2','1','2','3');
INSERT INTO CreateDatabase.item (quantidade,total,produto_id,preco_id,carrinho_id) VALUES ('3','1','3','3','3');

/*
Endereço
*/

INSERT INTO CreateDatabase.endereco (cep,numero,bairro,cidade,uf,cliente_id) VALUES ('58989212','59','jardim nelia','Araraquara','SP','1');
INSERT INTO CreateDatabase.endereco (cep,numero,bairro,cidade,uf,cliente_id) VALUES ('95863117','105','Camargo novo','São josé dos campos','SP','2');
INSERT INTO CreateDatabase.endereco (cep,numero,bairro,cidade,uf,cliente_id) VALUES ('97235139','98','Ferraz','São Paulo capital','SP','3');

INSERT INTO CreateDatabase.endereco (cep,numero,bairro,cidade,uf,cliente_id) VALUES ('54763178','302','Camargo Velho','São Paulo capital','SP','1');
INSERT INTO CreateDatabase.endereco (cep,numero,bairro,cidade,uf,cliente_id) VALUES ('61785348','628','Ferraz','São Paulo capital','SP','2');
INSERT INTO CreateDatabase.endereco (cep,numero,bairro,cidade,uf,cliente_id) VALUES ('78132547','147','Camargo Novo','São Paulo capital','SP','3');
