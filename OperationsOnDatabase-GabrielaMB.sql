# Para calcular o valor total do carrinho

SELECT carrinho.id as id_carrinho, SUM(item.quantidade * preco.valor) as total_carrinho
FROM carrinho
JOIN item ON item.carrinho_id = carrinho.id
JOIN preco ON item.preco_id = preco.id
GROUP BY carrinho.id;

# gera um relatório com a lista de itens de um pedido de um cliente apresentando o nome de cada produto, quantidade, valor unitário de cada produto e o valor total

SELECT produto.nome as nome_produto, item.quantidade, preco.valor as valor_unitario, (item.quantidade * preco.valor) as valor_total
FROM carrinho
JOIN item ON item.carrinho_id = carrinho.id
JOIN preco ON item.preco_id = preco.id
JOIN produto ON item.produto_id = produto.id
WHERE carrinho.cliente_id;

# gera um relatório mostrando o produto mais vendido e os seguites em ordem decrescente, pode ser seguido de LIMIT=1 pra mostrar só o primeiro

SELECT produto.nome as nome_produto, SUM(item.quantidade) as quantidade_vendida
FROM item
JOIN produto ON item.produto_id = produto.id
GROUP BY produto.id
ORDER BY quantidade_vendida DESC;
#LIMIT 1;

# mostra um relatório do clientes com a compra de maior valor e os seguintes em ordem descrente, pode ser seguido de LIMIT=1 pra mostrar só o primeiro

SELECT cliente.nome as nome_cliente, SUM(item.quantidade * preco.valor) as total_gasto
FROM carrinho
JOIN item ON item.carrinho_id = carrinho.id
JOIN preco ON item.preco_id = preco.id
JOIN cliente ON carrinho.cliente_id = cliente.id
GROUP BY cliente.id
ORDER BY total_gasto DESC;
#LIMIT 1;

# mostra um relatório com o total em quantidades e os valores dos itens já vendidos no sistema

SELECT produto.nome as nome_produto, SUM(item.quantidade) as quantidade_vendida, ROUND(AVG(preco.valor), 2) as media_valor_unitario, SUM(item.quantidade * preco.valor) as valor_total
FROM item
JOIN produto ON item.produto_id = produto.id
JOIN preco ON item.preco_id = preco.id
GROUP BY produto.id
HAVING SUM(item.quantidade) > 0;