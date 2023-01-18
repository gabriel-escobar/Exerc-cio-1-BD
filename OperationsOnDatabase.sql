/*Gera um relatório com a lista de itens de um pedido de um cliente apresentando o nome de cada produto,
quantidade, valor unitário de cada produto e o valor total.*/
SELECT p.nome AS 'Nome do Produto', i.quantidade AS 'Quantidade', pr.valor AS 'Valor Unitário', (i.quantidade * pr.valor) AS 'Valor Total', cl.id AS 'Cliente'
FROM cxcommerce.carrinho c
JOIN cxcommerce.item i ON c.id = i.carrinho_id
JOIN cxcommerce.produto p ON i.produto_id = p.id
JOIN cxcommerce.preco pr ON i.preco_id = pr.id
JOIN cxcommerce.cliente cl ON c.cliente_id = cl.id
WHERE c.cliente_id IN (1, 2);

/*Gera o relatório de produto mais vendido*/
SELECT p.nome, SUM(i.quantidade) as 'Quantidade Vendida'
FROM cxcommerce.item i
JOIN cxcommerce.produto p ON i.produto_id = p.id
GROUP BY p.nome
ORDER BY SUM(i.quantidade) DESC
LIMIT 1;

/*Gera relatório do cliente com a compra de maior valor*/
SELECT cl.nome, SUM(i.quantidade * pr.valor) AS 'Valor Total'
FROM cxcommerce.carrinho c
JOIN cxcommerce.item i ON c.id = i.carrinho_id
JOIN cxcommerce.preco pr ON i.preco_id = pr.id
JOIN cxcommerce.cliente cl ON c.cliente_id = cl.id
GROUP BY cl.nome
ORDER BY SUM(i.quantidade * pr.valor) DESC
LIMIT 1;

/*Relatório com o total em quantidades e os valores dos itens já vendidos no sistema*/
SELECT p.nome AS 'Nome do Produto', i.quantidade AS 'Quantidade Vendida', (i.quantidade * pr.valor) AS 'Valor Total do Produto'
FROM cxcommerce.item i
JOIN cxcommerce.produto p ON i.produto_id = p.id
JOIN cxcommerce.preco pr ON i.preco_id = pr.id
ORDER BY p.nome;

SELECT SUM(i.quantidade * pr.valor) AS 'Valor Total Vendido'
FROM cxcommerce.item i
JOIN cxcommerce.preco pr ON i.preco_id = pr.id;