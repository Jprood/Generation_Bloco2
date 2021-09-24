create database db_construindo_a_nosa_vida;

use db_construindo_a_nosa_vida;

create table tb_categoria(
id bigint auto_increment,
materiais varchar(200),
periculosidade varchar(200),
ativo boolean,
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (materiais, periculosidade, ativo) values ("Material de contrução", "alta" , true);
insert into tb_categoria (materiais, periculosidade, ativo) values ("Material de acabamento", "baixa", true);
insert into tb_categoria (materiais, periculosidade, ativo) values ("Material elétricos", "alta",true);
insert into tb_categoria (materiais, periculosidade, ativo) values ("Material hidráulicos", "alta",true);
insert into tb_categoria (materiais, periculosidade, ativo) values ("Material de preparo", "baixa",true);

create table tb_produto (
id bigint auto_increment,
nome varchar(200) not null,
preco decimal (7,2) not null,
quatidade int not null,
tamanho_peso varchar(50),
marca varchar(100),
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

select * from tb_produto;

insert into tb_produto (nome, preco, quatidade, tamanho_peso, marca, id_categoria) values ("Saco de cimento", 30.00, 25, "50 Kg", "Votoran", 1);
insert into tb_produto (nome, preco, quatidade, marca, id_categoria) values ("Disjuntores", 17.99, 50, "Tramontina", 3);
insert into tb_produto (nome, preco, quatidade, tamanho_peso, marca, id_categoria) values ("Tinta Branca", 120.00, 15, "3.6 L", "Suvinil", 2);
insert into tb_produto (nome, preco, quatidade, tamanho_peso, marca, id_categoria) values ("Massa corida", 20.00, 32, "20 Kg", "Suvinil", 2);
insert into tb_produto (nome, preco, quatidade, marca, id_categoria) values ("Torneira", 299.00, 3, "Deca", 4);
insert into tb_produto (nome, preco, quatidade, tamanho_peso, marca, id_categoria) values ("Luvas de LATEX", 5.50, 23, "M", "Nobrecar", 5);
insert into tb_produto (nome, preco, quatidade, tamanho_peso, marca, id_categoria) values ("Tijolo", 1.00, 599, "29 cm", "Tlaje", 1);
insert into tb_produto (nome, preco, quatidade, tamanho_peso, marca, id_categoria) values ("Lona de plastico", 30.00, 10, "6 Metros", "Mantalon", 5);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.preco, tb_produto.tamanho_peso, tb_produto.marca, tb_categoria.materiais
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_categoria.id = 2;