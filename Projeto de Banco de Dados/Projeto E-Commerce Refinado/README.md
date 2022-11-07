# Projeto Conceitual de Banco de Dados
Assim como demonstrado durante as aulas, realize a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realize o refinamento do projeto e a persistência de dados para realização de testes. Especifique ainda queries mais complexas dos que apresentadas durante a explicação do desafio. Sendo assim, crie queries SQL com as cláusulas abaixo:

- Recuperações simples com SELECT Statement
- Filtros com WHERE Statement
- Crie expressões para gerar atributos derivados
- Defina ordenações dos dados com ORDER BY
- Condições de filtros aos grupos – HAVING Statement
- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

### **Diretrizes**

- Não há um mínimo de queries a serem realizadas;
- Os tópicos supracitados devem estar presentes nas queries;
- Elabore perguntas que podem ser respondidas pelas consultas;
- As cláusulas podem estar presentes em mais de uma query;

Sobre o cliente:

O cliente pode ser cadastrado no site com CPF ou CNPJ
O endereço do cliente irá determinar o valor do frete
Um cliente pode fazer mais de um pedido. 

Sobre o produto:

Os produtos são vendidos por uma unica plataforma online. Contudo, estes podem ter vendedores distintos (terceiros)
Os produtos possuem  fornecedores
O pedido é composto por um ou mais produtos

Sobre o pedido:

Um pedido só é feito por um cliente
O pedido  possue informações de do cliente, forma ded pagamento, entrega, status, descrição e quantidade de produto
Um produto ou mais, compoem o pedido


### **Objetivo:**

Aplique o mapeamento para o cenário:

“Refinar o modelo apresentado acrescentando os seguintes pontos”

- Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
- Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
- Entrega – Possui status e código de rastreio;

**Perguntas a serem respondidas pelas queries SQL:**



- Quantos clientes cadastrado?
- Qual a quantidade total de pedidos?
- Quantos pedidos foram feitos por cada cliente?
- Qual é o ticket médio das vendas?
- Algum vendedor também é fornecedor?
- Relação de nomes dos fornecedores e nomes dos produtos;
- Quantos clientes fizeram compras e quantos não fizeram?
- Relação cliente, tipo de pagamento e valor do pedido:
- Qual os valores máximo, médio, mínimo e total das vendas?
- Clientes que fizeram pedidos acima de R$100,00.
