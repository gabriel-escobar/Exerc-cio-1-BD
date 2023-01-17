# Exerc-cio-1-BD
Repositório para subir os arquivos de banco de dados no primeiro exercício.

Cliente - Carrinho: 1 - 1, o cliente terá só um carrinho.

Cliente - Endereço: 1 - N, se é um e-commerce o cliente pode ter diferentes endereços cadastrados.

Preço - Produto: N - 1, como foi discutido durante a aula um produto pode ter diferentes preços.

Preço - Item: Existem duas relações 1 - 1,
Caso 1:  Entendi que item pode receber o id de produto diretamente de preço.
Caso 2:  Existe o relacionamento natural do id de preço como chave estrangeira de Item em preço_id.

Carrinho - Item: 1 - N, o carrinho terá diferentes items.