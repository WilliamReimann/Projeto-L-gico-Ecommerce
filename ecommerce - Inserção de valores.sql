-- Inserção de dados e queries
use ecommerce;



show tables;
insert into Clients (Fname, Lname, CPF, Address,FootSize)
	values('Giannis', 'Antetokounmpo','12345678901','100 Legends Way, Boston, MA 02114, EUA',45),
          ('Kevin', 'Durant','23456789012','620 Atlantic Ave, Brooklyn, NY 11217, EUA',44),
		  ('Stephen', 'Curry','34567890123','1 Warriors Way, San Francisco, CA 94158, EUA',40),
		  ('Luka', 'Doncic','45678901234','2500 Victory Ave, Dallas, TX 75219, EUA',41),
          ('LeBron', 'James','56789012345','1111 S Figueroa St, Los Angeles, CA 90015, EUA',43),
          ('Anthony','Davis','78901234567','1111 S Figueroa St, Los Angeles, CA 90015, EUA',44),
          ('Nikola', 'Jokic','67890123456','1000 Chopper Cir, Denver, CO 80204, EUA',45);

insert into product(Pname, Classification_kids, Category, Size, Price)
	values ('Under Armour Ps Jet',true, 'cano baixo', '27-31','313.49'),
           ('Nike Precision VI',false, 'cano baixo', '38-44','322.99'),
           ('Adidas D-Rose Son of Chi',false, 'cano médio', '37-46','465.49'),
	       ('Nike NBA Kyrie Irving 8',false, 'cano baixo', '38-44','949.99'),
           ('Nike Lebron XIX Low Seasonal',false, 'cano médio', '38-44','759.99'),
           ('Under Armour Buzzer',false, 'cano baixo', '39-48','265.99');
      

    insert into orders( idOrder, idOrderClient, OrderStatus, OrderDescription,SendValue, paymentCash)
      values (1,1,default,'compra via aplicativo','313.49',0),
             (2,2,default,'compra via aplicativo','322.99',0),
			 (3,3,'Confirmado','compra em loja','949.99',1),
             (4,4,default,'compra via web site','465.49',0),
             (5,5,default,'compra via web site','759.99',0),
             (6,6,'Confirmado','compra via web site','598.88',1),
             (7,7,'Confirmado','compra em loja','1798.98',1),
			 (8,1,'Confirmado','compra em loja','579.48',1);
             
             
	  insert into productOrder(idPOorder,idPOproduct,prodQuantity,poStatus)
             values (1,5,2,default),
					(2,5,2,default),
                    (3,6,2,default),
                    (4,5,2,default),
                    (5,6,2,default),
                    (6,5,2,default);
       
      
       insert into productStorage (idProdStorage, StorageLocation, Quantity) values						
					('Rio de Janeiro', 1000),
					('Rio de Janeiro', 500),
                    ('Rio de Janeiro', 750),
                    ('São Paulo', 1000),
                    ('São Paulo', 750),
                    ('São Paulo', 500);
       
       
       
        insert into supplier(SocialName, CNPJ, Contact) values
				('Adidas','14151617181920','55981234567'),
                ('Under Armour','15161718192021','55982345678'),
                ('Nike','16171819202122','55983456789');
       
       
       
insert into seller (SocialName, AbstName, CNPJ, CPF, Contact) values
					('NBASTORERJ',null,'17181920212223',null,'55984567890'),
                    ('NBASTORESP',null ,'18192021222324',null,'55985678901');


	   insert into productSeller(idPseller, idPproduct, prodQuantity) values
					(1,3,20),
                    (2,4,30),
                    (3,5,40);
    
       -- Relação de produtos e fornecedor:
select idProduct, Fname, SocialName, CNPJ from product
		inner join product_supplier on idProduct=idSProduct
        inner join supplier on idSupplier = idSSupllier;
        
         -- Mostrar o nome e preço dos produtos com preço maior que 500 reais
select Fname, Category, Price from product having Price > 500 order by Fname, Category;

       -- Quantos produtos cadastrados têm a categoria igual a cano baixo?
select count(*) from product where Category = 'cano baixo';


    