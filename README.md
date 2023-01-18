# Scripts de Banco de Dados Ecommerce - NTT Data CX Academy

Esses scripts são utilizados para criar e popular um banco de dados ecommerce no MySQL.

## Pré-requisitos

- Servidor MySQL instalado e em execução
- Ferramentas do cliente MySQL (por exemplo, mysql, mysqldump)

## Uso

1. Abra uma janela de terminal e faça login no MySQL como usuário root:
   `mysql -u root -p`

2. Execute o script `CreateECommerceDataBase.sql`: <br>
   `source caminho/para/CreateECommerceDataBase.sql`

Este script criará o banco de dados ecommerce e todas as tabelas necessárias.

3. Execute o script `PopuplateECommerceDB.sql`: <br>

`use ecommerce;`<br>
`source caminho/para/PopuplateECommerceDB.sql`

Este script populará o banco de dados ecommerce com dados de exemplo.

4. Execute o script `OperationsECommerceDB.sql`:

`use ecommerce;`<br>
`source caminho/para/PopuplateECommerceDB.sql`

Este script executará algumas operações no banco de dados ecommerce e exibirá alguns relatórios.

## OBS: Certifique-se de substituir "caminho/para" pelo caminho real de seus scripts.

## Dicas

- Você também pode usar qualquer ferramenta de cliente MySQL GUI, como o workbench, para executar os scripts SQL.
