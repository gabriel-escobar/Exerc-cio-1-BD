Exercícios Práticos de SQL
------------------------------------

Esse Readme é pra explicar a atividade de SQL desenvolvida na CX Academy da NTT Data, aula 3.  

Essa atividade foi desenvolvida em 3 partes e resultou em 3 scripts diferentes e mais esse ReadMe.  

Scripts
--------------------------------------
CreateDatabase.sql: esse script gera um banco de dados chamado cxcommerce, caso não exista, e suas respectivas tabelas (produto, item, preco, cliente, endereco e carrinho, conforme a modelagem abaixo).

![image](https://user-images.githubusercontent.com/70555750/213212824-f7212dca-4da7-419f-8eda-10aeeb1df75d.png)

PopulateDatabase.sql: popula a database conforme orientação da atividade, podendo ter alguma coisa a mais do que o solicitado.  

OperationsOnDatabase.sql: mostra as principais consultas para esse banco de dados, listadas a seguir.

- calcula o valor total do carrinho
- gera um relatório com a lista de itens de um pedido de um cliente apresentando o nome de cada produto  
quantidade, valor unitário de cada produto e o valor total, pode ser seguido de um WHERE pra filtrar melhor   
- gera um relatório mostrando o produto mais vendido e os seguites em ordem decrescente, pode ser seguido de LIMIT=1 pra mostrar só o primeiro  
- mostra um relatório do clientes com a compra de maior valor e os seguintes em ordem descrente, pode ser seguido de LIMIT=1 pra mostrar só o primeiro  
- mostra um elatório com o total em quantidades e os valores dos itens já vendidos no sistema  
