create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(200) not null,
marca varchar(200) not null,
preco decimal(10,2) not null,
cor varchar (50),
 tamanho varchar(10),
 quantidade int,
primary key (id)
);

select * from tb_produtos;
 
insert into tb_produtos (nome, marca, preco, cor, tamanho, quantidade) values ("camisa", "Polo", 150.00, "preta", "M", 21);
insert into tb_produtos (nome, marca, preco, cor, tamanho, quantidade) values ("camiseta", "Nick", 100.00, "azul", "G", 25);
insert into tb_produtos (nome, marca, preco, cor, tamanho, quantidade) values ("camiseta", "Nick", 100.00, "preta", "G", 10);
insert into tb_produtos (nome, marca, preco, cor, quantidade) values ("bone", "Aidas", 119.90, "preto", 5);
insert into tb_produtos (nome, marca, preco, cor, tamanho, quantidade) values ("calça", "Gucci", 2500.99, "preta", "M", 15);
insert into tb_produtos (nome, marca, preco, cor, tamanho, quantidade) values ("calça", "Luis Vuitton", 4512.00, "Rosa", "M", 3);
insert into tb_produtos (nome, marca, preco, cor, tamanho, quantidade) values ("tenis", "Balenciaga", 9999.99, "Preto e laranja", "41", 7);
insert into tb_produtos (nome, marca, preco, cor, tamanho, quantidade) values ("meia", "Mash", 12.00, "cinza", "P", 43);

select * from tb_produtos where preco < 500;
select * from tb_produtos where preco > 500;

update tb_produtos set quantidade = 17 where id = 1;

select * from tb_produtos;