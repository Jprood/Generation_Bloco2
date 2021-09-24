create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(50) not null,
modo varchar(20) not null,
ativo boolean not null,
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (tipo, modo, ativo) values ("Programação", "A distancia", true);
insert into tb_categoria (tipo, modo, ativo) values ("Front-end", "A distancia", true);
insert into tb_categoria (tipo, modo, ativo) values ("Data science","A distancia", true);
insert into tb_categoria (tipo, modo, ativo) values ("Mobile", "A distancia", true);
insert into tb_categoria (tipo, modo, ativo) values ("Gestão", "A distancia", true);

create table tb_curso (
id bigint auto_increment,
curso varchar(200) not null,
preco decimal (7,2) not null,
duracao varchar (50) not null,
inicio date not null,
vagas int not null,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

select * from tb_curso;

insert into tb_curso (curso, preco, duracao, inicio, vagas, id_categoria) values ("JavaScript", 55.00, "2 meses", "2021-09-27", 30, 2);
insert into tb_curso (curso, preco, duracao, inicio, vagas, id_categoria) values ("Java e C#", 70.00, "3 meses", "2021-10-03", 32, 1);
insert into tb_curso (curso, preco, duracao, inicio, vagas, id_categoria) values ("Ciencia de dados", 100.00, "3 mese", "2021-10-01", 25, 3);
insert into tb_curso (curso, preco, duracao, inicio, vagas, id_categoria) values ("Agilidade", 40.00, "1 mes", "2021-09-25", 20, 5);
insert into tb_curso (curso, preco, duracao, inicio, vagas, id_categoria) values ("Android", 120.00, "4 meses", "2021-10-15", 31, 4);
insert into tb_curso (curso, preco, duracao, inicio, vagas, id_categoria) values ("Pyton", 65.00, "2 meses", "2021-11-01", 29, 1);
insert into tb_curso (curso, preco, duracao, inicio, vagas, id_categoria) values ("HTML & CSS", 70.00, "3 meses", "2021-10-05", 12, 2);
insert into tb_curso (curso, preco, duracao, inicio, vagas, id_categoria) values ("IOS", 120.00, "4 meses", "2021-11-11", 28, 4);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where curso like "%j%";

select tb_curso.curso, tb_curso.preco, tb_curso.duracao, tb_curso.vagas, tb_categoria.tipo, tb_categoria.modo
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria where tb_categoria.id = 2;