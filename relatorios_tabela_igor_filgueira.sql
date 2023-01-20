#Total do carrinho
SELECT carrinho.id AS 'ID do Carrinho', (item.quantidade * preco.valor) AS 'Valor total' 
FROM item 
JOIN carrinho ON item.carrinho_id = carrinho.id 
JOIN preco ON item.preco_id = preco.id;


#Relatório com a lista de um cliente com os itens mais pedidos com nome do produto, quantidade, valor unitário e o valor total
SELECT produto.nome, item.quantidade, item.total, preco.valor AS valor_unitario, (item.quantidade * preco.valor) as valor_total
FROM item
JOIN produto ON item.produto_id = produto.id
JOIN preco ON item.preco_id = preco.id;


#Relatório do cliente com a compra de maior valor
SELECT cliente.nome, SUM(item.total) as valor_compra, carrinho.datahora
FROM carrinho
JOIN cliente ON carrinho.cliente_id = cliente.id
JOIN item ON carrinho.id = item.carrinho_id
GROUP BY carrinho.id
ORDER BY valor_compra DESC;


#Relatório do produto mais vendido
SELECT produto.nome, item.quantidade 
FROM item
JOIN produto ON item.produto_id = produto.id
GROUP BY produto.id
ORDER BY quantidade DESC
LIMIT 1;

# Relatório com o total em quantidades e os valores dos itens já vendidos
SELECT produto.nome, item.quantidade, item.quantidade * preco.valor AS valor_total
FROM item
JOIN produto ON item.produto_id = produto.id
JOIN preco ON item.preco_id = preco.id
ORDER BY produto.nome;