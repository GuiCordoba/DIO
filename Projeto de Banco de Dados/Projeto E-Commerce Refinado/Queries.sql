-- QUERIES
use ecommerce;

-- Quantos clientes cadastrado?
select count(*) from clients;

-- Qual a quantidade total de pedidos?
select count(*) from orders;

-- Quantos pedidos foram feitos por cada cliente?
select concat(Fname,' ', Lname) as Complete_name, IdClient, quantity as Order_quantity 
								from orders, clients 
								where IdClient_order = IdClient
                                group by Order_quantity;

-- Qual é o ticket médio das vendas?
select  round(avg(Amount),2)  as Average_ticket from Payments;


-- Algum vendedor também é fornecedor?
select  Social_name_supplier as Seller_and_Supplier, CNPJ_supplier as CNPJ 
								from Supplier join Seller 
                                on CNPJ_supplier = CNPJ_seller;
							

-- Relação de nomes dos fornecedores e nomes dos produtos;
select Social_name_supplier as Supplier_name, Pname as Product_name from Product_Supplier as s
                            inner join Product as p on idPSproduct =  idProduct
                            inner join Supplier on IdPSsupplier =  IdSupplier 
                            where idProduct = idPSproduct
							order by Supplier_name;


-- Quantos clientes fizeram compras e quantos não fizeram?
select IdClient, concat(Fname,' ', Lname) as Complete_name, IdOrder, quantity from Clients left join Orders on IdClient_order = IdClient;

						
-- Relação cliente, tipo de pagamento e valor do pedido:
select  concat(Fname,' ', Lname) as Complete_name, Type_pay, Amount from Clients c inner join Payments  p where p.IdClient = c.IdClient;

-- Qual os valores maximo, medio, minimo e total das vendas?
 select  round(sum(Amount),2) as Total_sales, max(Amount) as Max_sale, round(min(Amount),2) as Min_sale, round(avg(Amount),2) as Avg_sale from Payments;
 
 -- Clientes que fizeram pedidos acima de R$100,00
 select concat(Fname,' ', Lname) as Complete_name, c.IdClient , Amount from orders 
                                inner join clients c on c.IdClient = IdClient_order
                                inner join Payments p on p.IdClient =  IdClient_order
								where IdClient_order = c.IdClient 
                                group by Amount
                                having p.Amount > 100;

