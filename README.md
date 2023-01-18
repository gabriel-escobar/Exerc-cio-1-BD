# Banco de Dados cxcommerce: passo a passo

![image](https://user-images.githubusercontent.com/98417184/213278612-f744f3bb-3bff-4390-a96e-91ea32886e18.png)
<br /> 
<br /> 
<br /> 
## 1. Instalando o MySql
Para ter acesso aos scripts, primeiramente vamos instalar o MySql em nossa máquina. Vá até o site https://www.mysql.com/
Após o acesso a página, clique na aba Downloads.
Assim que o instalador for baixado, execute e siga as orientações.


Aceite os termos e clique em Next.

![image](https://user-images.githubusercontent.com/98417184/213292502-ff42f1e9-d84d-48b0-9795-fd7f735883d1.png)
<br /> 

Selecione a opção Developer Default e clique em Next.

![image](https://user-images.githubusercontent.com/98417184/213292232-39746294-e8d6-4437-ba6b-9f1674953a39.png)
<br /> 

Aqui vai verificar se existe um componente detectado que não está instalado no seu computador. Só clicar em Execute.

![image](https://user-images.githubusercontent.com/98417184/213292746-0e7d43a8-1c6b-49f8-a091-4ac97893c2b1.png)
<br /> 

O processo que irá ocorrer com cada uma das opções a serem instaladas.

![image](https://user-images.githubusercontent.com/98417184/213293008-bab9981f-6bcc-4669-be23-e3cd520b34a2.png)
<br /> 

Em seguida aparecerá esta janela e não é necessário mudar nenhuma opção. Só clicar em Next.

![image](https://user-images.githubusercontent.com/98417184/213293303-17a31414-ba35-4501-bf35-c968425170eb.png)
<br /> 

Neste passo você irá definir uma senha para seu usuário root.

![image](https://user-images.githubusercontent.com/98417184/213293519-ca37c51b-71d2-43f4-a0a5-49aa3d92fa74.png)
<br /> 

Na tela abaixo podemos deixar como está, clicar em Next e só aguardar o término da instalação.

![image](https://user-images.githubusercontent.com/98417184/213293923-95623968-8c0b-4fcf-9208-46754ed74fea.png)
<br /> <br /> <br /> 

## 2. Acessando os scripts

Para acessar os scripts deste repositório será necessário fazer o clone do mesmo.
Em seguida, abra o MySql Workbench e em MySql Connections insira seu usuário e senha.

![image](https://user-images.githubusercontent.com/98417184/213298648-0caf9d48-77e5-4ec4-91be-edfcacab829e.png)
<br /> 

Na parte central onde está **Query1** digite o comando **USE cxcommerce;** e clique no ![image](https://user-images.githubusercontent.com/98417184/213299384-14e6da12-8c80-4362-ba5a-2377aa802c0e.png)

Agora você tem acesso ao banco de dados cxcommerce.
<br /> <br /> <br /> 


## 3. CreateDatabaseLeandroEgashira.sql
Script utilizado na criação do banco de dados cxcommerce, na criação das tabelas (produto, cliente, carrinho, item, preco e endereco).
<br /> <br /> <br /> 

## 4. PopulateDatabaseLeandroEgashira.sql
Esse script foi criado para o preenchimento de todas as tabelas com informações a serem utilizadas posteriormente no script abaixo.
<br /> <br /> <br /> 

## 5. OperateDatabaseLeandroEgashira.sql
Nesse script foram feitas as seguintes operações:
- Cálculo do valor total do carrinho;
- Foi gerado um relatório com a lista de itens de pedido de um cliente com nome do produto, quantidade, valor unitário e o valor total;
- Gerado relatório do produto mais vendido;
- Gerado relatório do cliente com a compra de maior valor;
- Gerado relatório com total em quantidades e os valores dos itens já vendidos no sistema
