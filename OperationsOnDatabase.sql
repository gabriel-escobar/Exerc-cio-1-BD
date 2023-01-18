# calcula o valor total do carrinho

SELECT SUM(i.total) as valor_total
FROM item i
JOIN preco p ON i.preco_id = p.id
GROUP BY i.carrinho_id;

# gera um relatório com a lista de itens de um pedido de um cliente apresentando o nome de cada produto,
quantidade, valor unitário de cada produto e o valor total, pode ser seguido de um WHERE pra filtrar melhor

SELECT item.quantidade, item.total, produto.nome, preco.valor, (item.quantidade * preco.valor) as valor_total 
FROM item 
JOIN produto ON item.produto_id = produto.id 
JOIN preco ON item.preco_id = preco.id;

# gera um relatório mostrando o produto mais vendido e os seguites em ordem decrescente, pode ser seguido de LIMIT=1 pra mostrar só o primeiro

SELECT produto.nome, SUM(item.quantidade) as quantidade_vendida 
FROM item 
JOIN produto ON item.produto_id = produto.id 
GROUP BY produto.nome
ORDER BY quantidade_vendida DESC;

# mostra um relatório do clientes com a compra de maior valor e os seguintes em ordem descrente, pode ser seguido de LIMIT=1 pra mostrar só o primeiro

SELECT cliente.nome, SUM(item.total) as valor_compra, carrinho.datahora
FROM carrinho
JOIN cliente ON carrinho.cliente_id = cliente.id
JOIN item ON carrinho.id = item.carrinho_id
GROUP BY carrinho.id
ORDER BY valor_compra DESC;

# mostra um elatório com o total em quantidades e os valores dos itens já vendidos no sistema

SELECT produto.nome, SUM(item.quantidade) as quantidade_vendida, SUM(item.total) as valor_vendido
FROM item
JOIN produto ON item.produto_id = produto.id
GROUP BY produto.nome;