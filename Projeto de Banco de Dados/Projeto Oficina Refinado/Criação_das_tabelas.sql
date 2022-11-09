-- Criação do banco de dados para o cenário da oficina refinado
create database oficina;
use oficina;

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criar tabela cliente
create table cliente(
	idCliente int auto_increment primary key,
    idVeiculo_cl int,
	Nome varchar(40) not null,
    Telefone char(9) not null,
    Endereço varchar(60),
    CPF_cl char(11) not null,
    Email varchar(40),
	constraint fk_idVeiculo_cl  foreign key (idVeiculo_cl ) references veiculo(idVeiculo),
    constraint unique_cpf_cliente unique (CPF_cl)
);
select * from  cliente;
alter table cliente auto_increment =1;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Criar tabela veiculo
create table veiculo(
	idVeiculo int auto_increment primary key,
    Modelo varchar(15),
    Ano char(4),
    Placa char(7),
    Cor varchar(10)
);
desc veiculo;
select * from veiculo;
--------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Criar tabela ordem de serviço
create table ordem_serviço(
	idOrdem_serviço int auto_increment primary key,
    idEquipe_os int,
    idOrçamento_os int,
    idVeiculo_os int,
    idCliente_os int,
    Data_emissao date,
    Data_conclusão date,
    Status_os enum('Autorizado','Processando','Finalizado') default 'Processando',
    Valor_serviço float not null,
    constraint fk_idEquipe_os foreign key (idEquipe_os) references equipe(idEquipe),
	constraint fk_idOrçamento_os foreign key (idOrçamento_os) references orçamento(idOrçamento),
    constraint fk_idVeiculo_os  foreign key (idVeiculo_os) references veiculo(idVeiculo),
    constraint fk_idCliente_os  foreign key (idCliente_os) references cliente(idCliente)
);
desc orderm_serviço;
select * from ordem_serviço;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criar tabela equipe
create table equipe(
	idEquipe int auto_increment primary key,
    Especialidade_eq enum('Concerto', 'Revisão') not null
);
select * from equipe;
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criar tabela mecanicos
create table mecanicos(
	IdMecanicos int auto_increment primary key,
    idEquipe_mc int,
    Nome_completo varchar(60) not null,
    CPF_mc char(11) not null,
    Endereço varchar(45),
    Especialidade_mc enum('Concerto', 'Revisão') not null,
    constraint unique_mecanicos unique (CPF_mc),
	constraint fk_idEquipe_mc  foreign key (idEquipe_mc) references equipe(idEquipe)
);
select * from mecanicos;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criar tabela orçamento
create table orçamento(
	idOrçamento int auto_increment primary key,
    idCliente_or int,
    Status_or enum('Aprovado pelo cliente', 'Nâo aprovado pelo cliente','Aguardando aprovação') default 'Aguardando aprovação',
    Data_aprovação date,
    Valor float not null,
    constraint fk_idCliente_or  foreign key (idCliente_or) references cliente(idCliente)
);
select * from orçamento;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criar tabela composição do preço
create table composiçao_preço(
	IdComp_preço int auto_increment primary key,
    Tipo_serviço enum ('Revisão', 'Concerto') not null,
    Mao_obra float not null,
    Peça varchar(20),
    Quantidade_peça int,
    Valor_peça float,
    Obs varchar(200)
);
select * from composiçao_preço;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criar tabela orçamento_preço
create table orçamento_preço(
	idComp_preço_op int,
    idOçamento_op int,
    constraint fk_idComp_preço_op  foreign key (idComp_preço_op) references composiçao_preço(IdComp_preço),
    constraint fk_idOçamento_op  foreign key (idOçamento_op) references orçamento(idOrçamento)
);
select * from orçamento_preço;
----------------------------------------------------------------------------------------------------------------------------------------------------------------

