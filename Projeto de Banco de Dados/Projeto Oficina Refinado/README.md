# Projeto Conceitual de Banco de Dados
Para este cenário você irá utilizar seu esquema conceitual, criado no desafio do módulo de modelagem de BD com modelo ER, para criar o esquema lógico para o contexto de uma oficina. Neste desafio, você definirá todas as etapas. Desde o esquema até a implementação do banco de dados. Sendo assim, neste projeto você será o protagonista. Tenha os mesmos cuidados, apontados no desafio anterior, ao modelar o esquema utilizando o modelo relacional.

Após a criação do esquema lógico, realize a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realize a persistência de dados para realização de testes. Especifique ainda queries mais complexas do que apresentadas durante a explicação do desafio. Sendo assim, crie queries SQL com as cláusulas abaixo:

- Recuperações simples com SELECT Statement;

- Filtros com WHERE Statement;

- Crie expressões para gerar atributos derivados;

- Defina ordenações dos dados com ORDER BY;

- Condições de filtros aos grupos – HAVING Statement;

- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;

  

### **Narrativa:**

- Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica
- Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões periódicas
- Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
- A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra. A o valor da mão-de-obra foi definido como um valor fixo.
- O valor de cada peça também irá compor a OS. O cliente autoriza a execução dos serviços
- A mesma equipe avalia e executa os serviços. A oficina tem  duas equipes, revisão e concerto, e que cada equipe tem 2 funcionários.
- Os mecânicos possuem código, nome, endereço e especialidade
- Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.

## **Diretrizes**

- Não há um mínimo de queries a serem realizadas;

- Os tópicos supracitados devem estar presentes nas queries;

- Elabore perguntas que podem ser respondidas pelas consultas

- As cláusulas podem estar presentes em mais de uma query

  

**Algumas das perguntas que podes fazer para embasar as queries SQL:**

- Quantas OSs foram finalizadas?

- Quantas OSs não foram finalizadas?

- Quantos clientes cadastrado?

- Qual a quantidade total de OS?

- Numero de funcionários nas equipes;

- Qual os valores máximo, médio, mínimo e total dos serviços em 2022?

- Relação de peças trocadas em carros acime de 2010;

- Relação dos serviços realizados e valor de cada cliente;

- Recupere  as equipes e mecânicos que trabalharam em cada veiculo;

- Quantos dias demorou para finalizar o serviço desde aprovação do orçamento pelo cliente?

- Quais orçamentos estão aguardando aprovação pelo cliente e qual o serviço que sera feito?

  

  
