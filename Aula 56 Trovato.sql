-- Aula 2 SQL Functions
-- Consultar estoque de Produtos

-----------------------------------------------------------

--create database Sql_db_1

use Sql_db_1;
go

create table dbo.tb02_estoque_produtos(
     id_produto numeric(6) not null,
	 saldo      numeric(6) not null default 0 
);

create table dbo.tb03_produtos(
    id_produto numeric(6) primary key not null,
	nome_produto nvarchar(50) not null,
	saldo        numeric(6) not null default 0 
);
      drop table dbo.tb03_produtos

    alter table dbo.tb02_estoque_produtos
	  add constraint fk_produto foreign key (id_produto) references dbo.tb03_produtos(id_produto);

	  insert into dbo.tb03_produtos (id_produto, nome_produto) values (1, 'Caneta Vermelha');
	   insert into dbo.tb03_produtos (id_produto, nome_produto) values (2, 'Caneta Azul');
	    insert into dbo.tb03_produtos (id_produto, nome_produto) values (3, 'Lapis');


		 insert into dbo.tb02_estoque_produtos (id_produto) values (1);
	   insert into dbo.tb02_estoque_produtos (id_produto) values (1,);
	   insert into dbo.tb02_estoque_produtos (id_produto) values (1,);



	   select * from dbo.tb02_estoque_produtos

	   truncate table dbo.tb02_estoque_produtos


    



)