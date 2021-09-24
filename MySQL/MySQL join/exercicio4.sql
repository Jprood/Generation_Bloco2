create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(200) not null,
qualidade varchar (50),
ativo boolean not null,
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (descricao, qualidade, ativo) values ("Bovino", "de primeira", true);
insert into tb_categoria (descricao, qualidade, ativo) values ("Aves", "de primeira", true);
insert into tb_categoria (descricao, qualidade, ativo) values ("Suino", "de primeira", true);
insert into tb_categoria (descricao, qualidade, ativo) values ("Bovino", "de segunda", true);
insert into tb_categoria (descricao, ativo) values ("Outros", true);

create table tb_produto(
id bigint auto_increment,
nome varchar(200) not null,
preco decimal(7,2) not null,
quantidade int not null,
validade date,
tipoCarne varchar(50),
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

select * from tb_produto;

insert into tb_produto (nome, preco, quantidade, validade, tipoCarne, id_categoria) values ("Picanha", 65.00, 23, "2021-09-30", "carne vermelha", 1);
insert into tb_produto (nome, preco, quantidade, validade, tipoCarne, id_categoria) values ("Peito de frango", 30.00, 31, "2021-09-28", "Carne branca", 2);
insert into tb_produto (nome, preco, quantidade, validade, tipoCarne, id_categoria) values ("Costela", 35.00, 15, "2021-10-01", "Carne braca", 3);
insert into tb_produto (nome, preco, quantidade, validade, tipoCarne, id_categoria) values ("Maminha", 50.00, 10, "2021-09-20", "Carne vermelha", 1);
insert into tb_produto (nome, preco, quantidade, validade, tipoCarne, id_categoria) values ("Patinho", 27.99, 12, "2021-10-5", "Carne vermelha", 4);
insert into tb_produto (nome, preco, quantidade, validade, tipoCarne, id_categoria) values ("Medalhao", 50.00, 15, "2021-09-15", "Carne branca", 3);
insert into tb_produto (nome, preco, quantidade, id_categoria) values ("Carvao", 25.90, 30, 5);
insert into tb_produto (nome, preco, quantidade, id_categoria) values ("Gelo", 20.00, 25, 5);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_categoria.descricao, tb_categoria.qualidade
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_categoria.id = 1;