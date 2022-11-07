-- Inserindo dados e queries 
use ecommerce;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inserindo dados na tabela clients
insert into clients (Fname, Minit, Lname, CPF, Email, Address)  
			 values ('Maria','M','Silva', 12346789, 'maria@gmail.com','rua silva de prata 29, Carangola - Cidade das flores'),
		     ('Matheus','O','Pimentel', 987654321,'matheus@gmail.com','rua alemeda 289, Centro - Cidade das flores'),
			 ('Ricardo','F','Silva', 45678913,'ricardo@gmail.com','avenida alemeda vinha 1009, Centro - Cidade das flores'),
			 ('Julia','S','França', 789123456,'julia@gmail.com','rua lareijras 861, Centro - Cidade das flores'),
			 ('Roberta','G','Assis', 98745631,'roberta@gmail.com','avenidade koller 19, Centro - Cidade das flores'),
			 ('Isabela','M','Cruz', 654789123,'isabela@gmail.com','rua alemeda das flores 28, Centro - Cidade das flores');
             
select * from clients;
 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------   
-- -- Inserindo dados na tabela product
insert into product (Pname, category, price) values
							  ('Fone de ouvido','Eletrônico','50.00'),
                              ('Barbie Elsa','Brinquedo','72.00'),
                              ('Body Carters','Vestimento','35.90'),
                              ('Microfone Vedo - Youtuber','Eletrônico','65.00'),
                              ('Sofá retrátil','Móveis','1500.00'),
                              ('Farinha de arroz','Alimento','34.60'),
                              ('Fire Stick Amazon','Eletrônico','49.90');
select * from product;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inserindo dados na tebela order
desc Orders;
insert into orders (IdClient_order, IdPayment_order, IdShipping_order, quantity, Status_order, Des_order) values 
							 (1, 1, 1, 3,default,'compra via aplicativo'),
                             (2, 2, 2, 1,default,'compra via aplicativo'),
                             (3, 3, 3, 2,'Confirmado',null),
                             (4, 4, 4, 5, default,'compra via web site');

select * from orders;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inserindo dados na tabela payment
desc Payments;
insert into Payments (Idclient, Type_pay, Amount) values
							(1, 'Pix', 150 ),
                            (2, 'Boleto', 72 ),
                            (3, 'Cartão', 71.80), 
                            (4, 'Cartão', 249.5);
select * from Payments;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inserindo dados na tabela payment Product_Order
desc Product_Order;
insert into Product_Order (IdPOorder, idPOproduct, Quantity_product, Status_product) values
							(1, 1, 3, default),
                            (2, 2, 1, default),
                            (3, 3, 2, default),
                            (4, 4, 5, default);
select * from Product_Order;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inserindo dados na tabela Product_Storage
desc Product_Storage;
insert into Product_Storage (Location_storage, Quantity_product_st) values
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('São Paulo',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Brasília',60);
                            
select * from Product_Storage;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inserindo dados na tabela Supplier
desc Supplier;
insert into Supplier (Social_name_supplier, CNPJ_supplier, Pnumber_supplier, Email_supplier) values
						('Almeida e filhos', 123456789123456,'21985474', 'almeidafilho@gmail.com'),
                            ('Eletrônicos Silva',854519649143457,'21985484', 'eletrosilva@gmail.com'),
                            ('Eletrônicos Valma', 934567893934695,'21975474', 'eletrovalma@gmail.com');

insert into Supplier (Social_name_supplier, CNPJ_supplier, Pnumber_supplier, Email_supplier) values
						('Tech eletronics', 123456789456321, 219946287, 'tech@gmail.com'),
						('Botique Durgas',123456783, 219567895, 'durgas@gmail.com'),
						('Kids World',456789123654485, 1198657484, 'kidsworld@gmail.com');
select * from Supplier;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inserindo dados na tabela  Product_Supplier
desc Product_Supplier;
insert into Product_Supplier (IdPSsupplier, idPSproduct, Quantity_product) values
						 (1,1,500),
                         (1,2,400),
                         (2,4,633),
                         (3,3,5),
                         (2,5,10);	
                         
select * from Product_Supplier;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inserindo dados na tabela  Seller
desc Seller;
insert into Seller (Social_name_seller, CNPJ_seller, CPF_seller, Location, Pnumber_seller, Email_seller) values
					('Tech eletronics', 123456789456321, null, 'Rio de Janeiro', 219946287, 'tech@gmail.com'),
					('Botique Durgas',null,123456783,'Rio de Janeiro', 219567895, 'durgas@gmail.com'),
					('Kids World',456789123654485,null,'São Paulo', 1198657484, 'kidsworld@gmail.com');

select * from Seller;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Inserindo dados na shipping
desc Shipping;
insert into Shipping (Status_shipping, Shipping_price, Tracking, Arrival) values
					(default, 20, 124536712, '2022-12-01'),
                    ('Enviado', default, 124536712, '2022-03-12'),
                    ('Enviado', 34, 124536712, '2023-01-15'),
                    (default, 10, 124536712, '2022-11-10');
                    
 select * from Seller;
 
 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- Inserindo dados na tabela Product_Seller
 desc Product_Seller;
 insert into Product_Seller (IdPseller, idPproduct, Quantity_product) values
							(1, 5, 25),
                            (2, 6, 30),
                            (3, 7, 44);
                            
select * from Product_Seller;	
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
