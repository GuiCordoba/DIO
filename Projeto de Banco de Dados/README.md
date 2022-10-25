# Projeto Conceitual de Banco de Dados
Esse projeto tem como objetivo aprimorar nosso conhecimento sobre modelagem de banco de dados.

O projeto consiste em replicar e refinar a modelagem de um banco de dados para um E-Comerce feita durante a aula desafio de projeto:

- Cliente PJ e PF - Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;

  Foi criado uma nova entidade com os atributos: CPF e CNPJ para a identificação do cliente. Possui um relacionamento de 1 para 1 com cliente.
- Pagamento - Pode ter cadastrado mais de uma forma de pagamento;

  Foi criado uma nova entidade com os atributos: PIX, boleto e cartão de credito. Possui um reelacionamneto de 1 para 1 com o cliente e 1 para 1 com o pedido.
- Entrega - Possui status e código de rastreio. 

   Foi criado uma nova entidade com os atributos: Codigo de rastreio, status e previsãpo de entrega. Pussui um relacionamento de 1 para 1 com produto.

