-- Inserção de dados 
use oficina;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Tabela cliente
insert into cliente (idVeiculo_cl, Nome, Telefone, Endereço, CPF_cl, Email)  values 
			 (1,'Guilherme Lopes', 997527895,'avenida rodolfo miranda, Centro - Rincao-SP',42265432258, 'guilopes@gmail.com'),		
			 (2,'Rogerio Cordoba', 997645567,'rua silva de prata 29, Carangola - Rincao-SP', 98765432158,'rogeriocordoba@gmail.com'),
		     (3,'Matheus Pimentel', 997467893,'rua alemeda 289, Centro - Ararquara_SP',54665432258, 'matheus@gmail.com'),
			 (4,'Ricardo Silva', 997789130,'avenida alemeda vinha 1009, Centro - Dobrada-SP',45678913078,'ricardo@gmail.com'),
			 (5,'Julia França', 997123561,'rua lareijras 861, Centro - Rincao-SP',43512345691,'julia@gmail.com'),
			 (6,'Roberta Assis', 997456311,'avenidade koller 19, Centro - Motuca-SP',98745631441,'roberta@gmail.com'),
			 (7,'Isabela Cruz', 997789125,'rua 9 de julho 28, Centro - <otuca-SP',65478912366,'isabela@gmail.com');
 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------            
 -- Tabela veiculo
 insert into veiculo (Modelo, Ano, Placa, Cor) values
			('Palio', 2016, 'dqf8098', 'Prata'),
            ('Corsa', 2012, 'gty8076', 'Prata'),
            ('Vectra', 2015, 'gbg7776', 'Preto'),
            ('Gol', 2020, 'bti6676', 'Branco'),
            ('Jeta', 2021, 'dfg8053', 'Branco'),
            ('Amarok', 2015, 'iyq5520', 'Prata'),
            ('Fusca', 1975, 'fvf3276', 'Amarelo');
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- Tabela ordem serviço
 insert into ordem_serviço(idEquipe_os, idOrçamento_os, idVeiculo_os, idCliente_os, Data_emissao, Data_conclusão, Status_os, Valor_serviço) values
			(2, 1, 1, 1, '2022-11-07', '2022-11-07','Finalizado',300),
            (1, 2, 2, 2,'2022-11-04', '2022-11-05','Finalizado',950),
            (1, 3, 3, 3, null, null, default, 700),
            (2, 4, 4, 4, null, null, default, 300),
            (2, 5, 5, 5, '2022-11-06','2022-11-07','Finalizado', 300),
            (1, 6, 6, 6, '2022-10-03','2022-10-05','Finalizado', 900),
            (1, 7, 7, 7, '2022-10-24','2022-10-27','Finalizado', 600);
 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- Tabela equipe
 insert into equipe (Especialidade_eq) values
			('Concerto'),
            ('Revisão');
 
 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- Tabela mecanicos
 insert into mecanicos (idEquipe_mc, Nome_completo, CPF_mc, Endereço, Especialidade_mc) values
			(1, 'Antonio da Silva', 42268264888,'rua lareijras 861, Centro - Rincao-SP','Concerto'),
            (1, 'Paulo Santos', 55678834421,'Avenida 7 de Setembro 861, Centro - Rincao-SP','Concerto'),
            (2, 'Marcos Antonio', 34456687890,'rua silva de prata 29, Carangola - Rincao-SP','Revisão'),
            (2, 'Gustavo Lopes', 34567898789,'rua da prata 90, Carangola - Rincao-SP','Revisão');
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Tabela orçamento 
insert into orçamento (idCliente_or, Status_or, Data_aprovação, Valor) values
			(1,'Aprovado pelo cliente', '2022-11-07', 300),
            (2,'Aprovado pelo cliente', '2022-11-04', 950),
            (3, default, null, 700),
            (4, default, null, 300),
            (5,'Aprovado pelo cliente', '2022-11-06', 300),
            (6,'Aprovado pelo cliente', '2022-10-03', 900),
            (7,'Aprovado pelo cliente', '2022-10-24', 600);
            
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Tabela composição_preço
insert into composiçao_preço (Tipo_serviço, Mao_obra, Peça, Quantidade_peça, Valor_peça, Obs) values
			('Revisão', 300, null, null, null, null),
            ('Concerto', 300, 'Correia Dentada', 1, 650, null),
            ('Concerto', 300, 'Disco de Freio', 4, 100, null),
            ('Revisão', 300, null, null, null, null),
            ('Revisão', 300, null, null, null, null),
            ('Concerto', 300, 'Amortecedores', 4, 150, null),
            ('Concerto', 300, 'Junta do Cabeçote', 1, 300, null);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Tabela orçamento_preço
insert into orçamento_preço (idComp_preço_op, idOçamento_op) values
			(1, 1),
            (2, 2),
            (3, 3),
            (4, 4),
            (5, 5),
            (6, 6),
            (7, 7);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 
 
 
 
 
 
 
 