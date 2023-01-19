
/* Relatório com a lista de itens de um pedido de um cliente */
SELECT p.nome AS 'Produto', i.quantidade AS 'Quantidade', pr.valor AS 'Valor da unidade', (i.quantidade * pr.valor) AS 'Valor Total', cl.nome AS 'Cliente' FROM cxcommerce.carrinho c
JOIN cxcommerce.item i ON c.id = i.carrinho_id
JOIN cxcommerce.produto p ON i.produto_id = p.id
JOIN cxcommerce.preco pr ON i.preco_id = pr.id
JOIN cxcommerce.cliente cl ON c.cliente_id = cl.id
WHERE c.cliente_id IN (3);


/* Relatório do produto mais vendido */
SELECT p.nome, SUM(i.quantidade) as 'Quantidade' FROM cxcommerce.item i
JOIN cxcommerce.produto p ON i.produto_id = p.id
GROUP BY p.nome ORDER BY SUM(i.quantidade) DESC LIMIT 1;

/*  Relatório do cliente com a compra de maior valor */
SELECT cl.nome, SUM(i.quantidade * pr.valor) AS 'Valor Total' FROM cxcommerce.carrinho c
JOIN cxcommerce.item i ON c.id = i.carrinho_id
JOIN cxcommerce.preco pr ON i.preco_id = pr.id
JOIN cxcommerce.cliente cl ON c.cliente_id = cl.id 
GROUP BY cl.nome ORDER BY SUM(i.quantidade * pr.valor) DESC LIMIT 1;

/* Relatório com o total em quantidades */
SELECT p.nome AS 'Produto', i.quantidade AS 'Quantidade', (i.quantidade * pr.valor) AS 'Valor Total' FROM cxcommerce.item i
JOIN cxcommerce.produto p ON i.produto_id = p.id
JOIN cxcommerce.preco pr ON i.preco_id = pr.id ORDER BY p.nome;

/* Relatório dos valores dos itens já vendidos no sistema */
SELECT SUM(i.quantidade * pr.valor) AS 'Valor Total' FROM cxcommerce.item i 
JOIN cxcommerce.preco pr ON i.preco_id = pr.id;
