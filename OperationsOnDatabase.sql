USE CreateDatabase;

/*
calcular valor total do carrinho
*/
UPDATE carrinho c, (SELECT carrinho_id, sum(total) AS TOTAL

FROM item GROUP BY carrinho_id) AS I
SET c.total = i.total
WHERE c.id = i.carrinho_id;

/*
query com nome do produto,quantidade,valor unitario e o valor total
*/

select i.id,n.nome, q.quantidade, v.valor, t.total

from cliente as i
join produto as n, item as q, preco as v,carrinho as t
where i.id like 1;

/*
query com o produto mais vendido
*/

select nome, count(*) as ProdutoMaisVendido
from produto
having Count(*)>1
order by ProdutoMaisVendido desc
limit 1;

/*
query com a compra de maior valor
*/

select max(total) from carrinho;

/*
query com o total em quantidades e os valores dos itens ja vendidos no sistema
*/

select sum(quantidade) as total
from item;

select sum(total) as total
from carrinho;

