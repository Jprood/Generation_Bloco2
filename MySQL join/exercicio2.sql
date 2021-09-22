create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tPizza varchar(200),
bebidas varchar(200),
ativo boolean not null,
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria(tPizza, ativo) values ("pizza salgada", true);
insert into tb_categoria(tPizza, ativo) values ("pizza salgada meio a meio", true);
insert into tb_categoria(tPizza, ativo) values ("pizza doce", true);
insert into tb_categoria(tPizza, ativo) values ("pizza doce meio a meio", true);
insert into tb_categoria(bebidas, ativo) values ("bebidas", true);

create table tb_pizza(
id bigint auto_increment,
produtos varchar(200),
preco decimal (7,2) not null,
numFatias int, 
bordaR boolean,
gelado boolean,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

select * from tb_pizza;

insert into tb_pizza (produtos, preco, numFatias, bordaR, id_categoria) values ("três queijos", 55.00, 8, true, 1);
insert into tb_pizza (produtos, preco, numFatias, bordaR, id_categoria) values ("calabresa", 50.00, 8, true, 1);
insert into tb_pizza (produtos, preco, numFatias, bordaR, id_categoria) values ("chocolate", 45.00, 8, true, 3);
insert into tb_pizza (produtos, preco, numFatias, bordaR, id_categoria) values ("meia chocolate, meia doce de leite", 50.00, 8, false, 4);
insert into tb_pizza (produtos, preco, numFatias, bordaR, id_categoria) values (" meia três queijos, meia calabresa", 55.00, 8, true, 2);
insert into tb_pizza (produtos, preco, numFatias, bordaR, id_categoria) values ("frango com catupiry", 55.00, 8, true, 1);
insert into tb_pizza (produtos, preco, gelado, id_categoria) values ("Guarana",7.50, true, 5);
insert into tb_pizza (produtos, preco, gelado, id_categoria) values ("Coca-Cola",7.50, true, 5);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where produtos like "%c%";

select tb_pizza.produtos, tb_pizza.preco, tb_pizza.numFatias, tb_categoria.tPizza, tb_categoria.bebidas
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria where tb_categoria.id = 1;