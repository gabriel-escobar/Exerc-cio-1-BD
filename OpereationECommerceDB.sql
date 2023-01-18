-- Calcular o valor total do carrinho
SELECT 
  carrinho.id, 
  SUM(item.total) as total 
FROM 
  carrinho 
  JOIN item ON carrinho.id = item.carrinho_id 
GROUP BY 
  carrinho.id;
  
  -- Gerar um relatório com a lista de itens de um pedido de um cliente apresentando o nome de cada produto, quantidade, valor unitário de cada produto e o valor total.
SELECT 
  produto.nome, 
  item.quantidade, 
  produto.preco,
  item.total
FROM 
  item
  JOIN produto ON item.produto_id = produto.id
  JOIN carrinho ON item.carrinho_id = carrinho.id
WHERE 
  carrinho.cliente_id = 2;
  
  
-- Geraum relatório de qual foi o produto mais vendido
SELECT 
  produto.nome, 
  SUM(item.quantidade) as total_vendido
FROM 
  item 
  JOIN produto ON item.produto_id = produto.id
GROUP BY 
  item.produto_id
ORDER BY 
  total_vendido DESC
LIMIT 1;

-- Relatório do cliente com a compra de maior valor
SELECT 
  cliente.nome, 
  SUM(carrinho.total) as total_compra
FROM 
  carrinho 
  JOIN cliente ON carrinho.cliente_id = cliente.id
GROUP BY 
  carrinho.cliente_id
ORDER BY 
  total_compra DESC
LIMIT 1;

-- Relatório com o total em quantidades e os valores dos itens já vendidos no sistema
	
SELECT 
  produto.nome,
  SUM(item.quantidade) as total_quantidade,
  SUM(item.total) as total_vendas
FROM 
  item 
  JOIN produto ON item.produto_id = produto.id
GROUP BY 
  item.produto_id;