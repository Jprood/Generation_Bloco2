create database db_escola;

use db_escola;

create table tb_alune(
id bigint auto_increment,
nome varchar(100) not null,
rm int (6),
ano varchar(5) not null,
nota decimal (4,2) not null,
sala int,
primary key (id)
);

select * from tb_alune;

insert into tb_alune (nome, rm, ano, nota, sala) values ("João", 123456, "3°", 8.5, 32);
insert into tb_alune (nome, rm, ano, nota, sala) values ("Enzo", 124566, "2°", 6.0, 30);
insert into tb_alune (nome, rm, ano, nota, sala) values ("Thomas", 456789, "1°", 7.0, 33);
insert into tb_alune (nome, rm, ano, nota, sala) values ("Marcia", 132435, "3°", 7.5, 32);
insert into tb_alune (nome, rm, ano, nota, sala) values ("Felipe", 135789, "3°", 9.0, 32);
insert into tb_alune (nome, rm, ano, nota, sala) values ("Paula", 987654, "2°", 5.0, 30);
insert into tb_alune (nome, rm, ano, nota, sala) values ("Fabia", 234567, "2°", 10.0, 30);
insert into tb_alune (nome, rm, ano, nota, sala) values ("Ana", 654321, "1°", 8.0, 33);

select * from tb_alune where nota < 7.0;
select * from tb_alune where nota > 7.0;

update tb_alune set nota = 6.00 where id = 6;

select * from tb_alune