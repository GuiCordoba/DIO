-- Criação do banco de dados para o cenário de E-Commerce
create database ecommerce;
select * from ecommerce;
use ecommerce;

-- Criar tabela cliente
create table Clients(
	IdClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    Email varchar(25) not null,
    Address varchar(30),
	constraint unique_cpf_client unique (CPF)
);
desc clients;
alter table clients auto_increment =1;
alter table clients
	modify column Address varchar(80);  -- Modifiquei o varcahr do Address
-----------------------------------------------------------------------------------------------------------

-- Criar tabela pedido
create table Orders(
	IdOrder int auto_increment primary key,
    IdClient_order int,
    IdPayment_order int,
    IdShipping_order int,
    quantity int not null,
    Status_order enum('Cancelado','Confirmado','Em Processamento') default 'Em processamento',
    Des_order varchar(250),
    constraint fk_idClient_order foreign key (idClient_order) references clients(idClient),
    constraint fk_IdPayment_order  foreign key (IdPayment_order) references clients(IdPayment),
    constraint fk_IdShipping_order_order  foreign key (IdShipping_order) references clients(IdShipping)
);
desc Orders;

-------------------------------------------------------------------------------------------------------------------------------
drop table Payments;
-- Criar pagamentos 
create table Payments(
	IdPayment int auto_increment,
	IdClient int,
    Type_pay enum('Boleto', 'Cartão', 'Pix') default 'Cartão',
    Amount float not null, -- Valor do produto
    primary key (idClient, idPayment)
);
desc Payments;

--------------------------------------------------------------------------------------------------------------------------------------
drop table Shipping;
-- Criar Envio
create table Shipping(
	IdShipping int auto_increment primary key,
	Status_shipping enum('Processando', 'Enviado','Entregue') default 'Processando',
    Shipping_price float default 15, 
    Tracking varchar(15) not null,
    Arrival date
);
desc shipping;

---------------------------------------------------------------------------------------------------------------------------------

drop table Product;
-- Criar tabela produto
create table Product(
	idProduct int auto_increment primary key,
    Pname varchar(15) not null,
    Category enum('Eletrônico', 'Vestimento','Alimento', 'Brinquedo','Móveis') not null,
    Price float not null
);
desc Product;
alter table Product
	modify column Pname varchar(50);  -- Modifiquei o varcahr do Pname
-------------------------------------------------------------------------------------------------------------------

-- Criar tabela estoque/produto
create table Product_Storage(
	IdStorage int auto_increment primary key,
    Location_storage varchar(200),
    Quantity_product_st int default 0
);


-------------------------------------------------------------------------------------------------------------------

-- Criar tabela fornecedor
create table Supplier(
	IdSupplier int auto_increment primary key,
    Social_name_supplier varchar(200) not null,
    CNPJ_supplier char(15) not null,
    Pnumber_supplier char(11) not null,
    Email_supplier varchar(25) not null,
    constraint unique_supplier unique (CNPJ_supplier)
);
desc Supplier;

alter table Supplier
	modify column Pname varchar(50);  -- Modifiquei o varcahr do Pname

----------------------------------------------------------------------------------------------------------------------

-- Criar tabela vendedor terceiro
create table Seller(
	IdSeller int auto_increment primary key,
    Social_name_seller varchar(255) not null,
    CNPJ_seller char(15),
    CPF_seller char(9),
    Location varchar(255),
    Pnumber_seller char(11) not null, -- Telefone celular
    Email_seller varchar(25) not null,
    constraint unique_cnpj_seller unique (CNPJ_seller),
    constraint unique_cpf_seller unique (CPF_seller)
);
alter table Seller
	modify column CPF_seller char(11);  -- Modifiquei o var do CPF_seller

--------------------------------------------------------------------------------------------------------------------------------------

-- Criando tabela produto/vendedor
create table Product_Seller(
	IdPseller int, -- não pode ser auto incrementa pois estara puxando info. de outra tabela
    idPproduct int,
    Quantity_product int default 1,
    primary key (IdPseller, idPproduct),
    constraint fk_product_seller foreign key (IdPseller) references Seller(IdSeller),
    constraint fk_product_product foreign key (idPproduct) references Product(idProduct)
);
desc Product_Seller;

---------------------------------------------------------------------------------------------------------------------------------------

-- Criando tabela produto/pedido
create table Product_Order(
	IdPOorder int, -- não pode ser auto incrementa pois estara puxando inf de outra tabela
    idPOproduct int,
    Quantity_product int default 1,		
    Status_product enum('Disponível', 'Sem no estoque') default 'Disponível',
    primary key (IdPOorder, idPOproduct),
    constraint fk_product_orderr foreign key (IdPOorder) references orders(IdOrder),
    constraint fk_product_product foreign key (idPOproduct) references Product(idProduct)
);
desc Product_Order;

----------------------------------------------------------------------------------------------------------------------------------------

-- Criando tabela produto/fornecedor
create table Product_Supplier(
	IdPSsupplier int, -- não pode ser auto incrementa pois estara puxando inf de outra tabela
    idPSproduct int,
    Quantity_product int default 1,		
    primary key (IdPSsupplier, idPSproduct),
    constraint fk_product_supplier foreign key (IdPSsupplier) references Supplier(IdSupplier),
    constraint fk_product_product foreign key (idPSproduct) references Product(idProduct)
);
desc Product_Supplier;

----------------------------------------------------------------------------------------------------------------------------------------------

