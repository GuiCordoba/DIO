-- Criação de queries 
use oficina;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Quantos clientes cadastrado?
select count(*) from cliente;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Quantas OSs foram finalizadas?
select count(*) from ordem_serviço where status_os = 'Finalizado'; 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Quantas OSs não finalizadas?
select count(*) from ordem_serviço where status_os = 'Processando'; 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Qual a quantidade total de OS?
select count(*) from ordem_serviço;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Numero de funcionários nas equipes;
select Nome_completo, CPF_mc, idEquipe, Especialidade_eq from mecanicos, equipe 
														where idEquipe = idEquipe_mc;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Qual os valores máximo, médio, mínimo e total dos serviços?
select max(Valor_serviço) as Valor_maximo, round(avg(Valor_serviço),2) as Valor_medio, min(Valor_serviço) as Valor_minimo, sum(Valor_serviço) as Valor_total
											from ordem_serviço 
                                            where status_os = 'Finalizado' and Data_conclusão > '2021-12-31' and Data_conclusão <= '2022-12-31';
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Relação de peças trocadas em carros acime de 2010;
select idOrdem_serviço as Ordem_serviço, Modelo, Ano as Ano_fabricação, Peça as Peça_trocada from ordem_serviço
										  inner join veiculo on idVeiculo = idVeiculo_os
                                          inner join orçamento_preço on idOrçamento_os = idOçamento_op
                                          inner join composiçao_preço on IdComp_preço = idComp_preço_op
                                          where Tipo_serviço = 'Concerto'
                                          having ano > 2010
                                          order by Ano;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Relação dos serviços realizados e valor de cada cliente;
select Nome, CPF_cl as CPF, Modelo, Ano as Ano_fabricação, Tipo_serviço, Valor_serviço from ordem_serviço
										  inner join cliente on idCliente = idCliente_os
                                          inner join veiculo on idVeiculo_os = idVeiculo
                                          inner join orçamento on idOrçamento_os = idOrçamento
                                          inner join 
													(select  Tipo_serviço from composiçao_preço inner join orçamento_preço
													on idComp_preço_op = IdComp_preço) e on idOrçamento_os = idOrçamento
                                          where  Status_or = 'Aprovado pelo cliente'
                                          group by  nome;
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                         
-- Recupere  as equipes e mecanicos que trabalharam em cada veiculo;
select  Especialidade_eq as Equipe, idOrdem_serviço as Ordem_serviço ,Nome_completo as Mecanico, Placa, Modelo from ordem_serviço
										 inner join veiculo on idVeiculo_os = idVeiculo
										 inner join mecanicos on idEquipe_mc = idEquipe_os
										 inner join equipe on idEquipe_os = idEquipe
                                         where Status_os = 'Finalizado'
										 group by idOrdem_serviço, Nome_completo, idOrdem_serviço
										 order by  idOrdem_serviço;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Quantos dias demorou para finalizar o serviço desde aprovação do orçamento pelo cliente;
select idOrdem_serviço as Ordem_serviço, Nome, CPF_cl as CPF,Data_aprovação, Data_conclusão,  (Data_conclusão - Data_aprovação) as Dias from ordem_serviço
										inner join cliente on idCliente_os = idCliente
                                        inner join orçamento on idOrçamento = idOrçamento_os
                                        where Status_or = 'Aprovado pelo cliente' and Status_os = 'Finalizado'
                                        order by dias;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Quais orçamentos estão aguardando aprovação pelo cliente e qual o serviço há de ser feito?
select  idOrdem_serviço, Status_or, Tipo_serviço from ordem_serviço
                                          inner join orçamento on idOrçamento_os = idOrçamento
                                          inner join 
													(select  Tipo_serviço from composiçao_preço inner join orçamento_preço
													on idComp_preço_op = IdComp_preço) e on idOrçamento_os = idOrçamento
                                          where  Status_or = 'Aguardando aprovação'
                                          group by  idOrdem_serviço;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
