create database db_rh;

use db_rh;
create table tb_funcionaries(
id bigint,
nome varchar(200) not null,
cpf bigint (11) not null,
endereco varchar(255) not null,
funcao varchar(100) not null,
salario decimal (10,2),
primary key (id)
);

ALTER TABLE tb_funcionaries MODIFY id bigint auto_increment;

select * from tb_funcionaries;

insert into tb_funcionaries (nome, cpf, endereco, funcao, salario) values ("Paula", 23454321234, "alameda dos pinhais 2345", "estagiária", 859.45);  
insert into tb_funcionaries (nome, cpf, endereco, funcao, salario) values ("João", 113343256789, "rua pinheiro 16", "desenvolvedor java junior", 2770.99);
insert into tb_funcionaries (nome, cpf, endereco, funcao, salario) values ("Paulo", 55564321345, "rua madeiro 121", "estagiária", 859.45);
insert into tb_funcionaries (nome, cpf, endereco, funcao, salario) values ("Amanda", 78945612345, "rua getulio 431", "desenvolvedora java junior", 2770.99);
insert into tb_funcionaries (nome, cpf, endereco, funcao, salario) values ("Leandro", 12345678912, "rua rosa 10", "desenvovedor java senior", 7000.45);

select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;

update tb_funcionaries set salario = 3000.99 where id = 2;
update tb_funcionaries set salario = 3000.99 where id = 4;
select * from tb_funcionaries;