create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(200) not null,
tarja varchar(200) not null,
formato varchar(200) not null,
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (tipo, tarja, formato) values ("Medicamento alopatico", "preta", "pilula");
insert into tb_categoria (tipo, tarja, formato) values ("Medicamento generico", "amarelo", "liquido");
insert into tb_categoria (tipo, tarja, formato) values ("Medicamento alopatico", "vermelha", "pilula");
insert into tb_categoria (tipo, tarja, formato) values ("Medicamento generico", "vermelha", "pilula");
insert into tb_categoria (tipo, tarja, formato) values ("Medicamento manipulado", "vermelha", "capsula");

create table tb_produto(
id bigint auto_increment,
nome varchar(200),
uso varchar(200),
preco decimal(7,2),
receita varchar(200),
validade date,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

select * from tb_produto;

insert into tb_produto (nome, uso, preco, receita, validade, id_categoria) values ("delatrz", "adulto e pediatrico", 50.00, "desnecessaria", "2023-02-15", 2);
insert into tb_produto (nome, uso, preco, receita, validade, id_categoria) values ("terazez", "adulto", 100.00, "necessaria", "2024-05-09", 1);
insert into tb_produto (nome, uso, preco, receita, validade, id_categoria) values ("alectoz", "adulto e pediatrico,", 20.00, "desnecessaria", "2021-12-28", 1);
insert into tb_produto (nome, uso, preco, receita, validade, id_categoria) values ("barpzanil", "pediatrico", 59.99, "necessaria", "025-09-09", 3);
insert into tb_produto (nome, uso, preco, receita, validade, id_categoria) values ("diloperidol", "adulto", 120.99, "desnecessaria", "2022-08-03", 5);
insert into tb_produto (nome, uso, preco, receita, validade, id_categoria) values ("cloradidol", "adulto e pediatrico", 34.99, "necessaria", "2026-05-01", 4);
insert into tb_produto (nome, uso, preco, receita, validade, id_categoria) values ("aderolipol", "adulto e pediatrico", 69.99, "desnecessaria", "2024-12-01", 2);
insert into tb_produto (nome, uso, preco, receita, validade, id_categoria) values ("clididol", "adulto", 349.99, "desnecessaria", "2022-12-15", 3);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%b%";

select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_categoria.tipo, tb_categoria.tarja
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_categoria.id = 2;
