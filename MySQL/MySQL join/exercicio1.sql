create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nClasse varchar(200) not null,
resistencia varchar(100) not null,
dano varchar(100) not null,
vestimenta varchar(100) not null,
primary key (id)
);
drop table tb_classe;
drop table tb_personagem;
select * from tb_classe;

insert into tb_classe (nClasse, resistencia, dano, vestimenta) values ("Mago", "baixa", "altissimo", "armaduras leves");
insert into tb_classe (nClasse, resistencia, dano, vestimenta) values ("Assasino","baixa", "altissimo", "armaduras leves" );
insert into tb_classe (nClasse, resistencia, dano, vestimenta) values ("Ranger", "baixa", "alto", "armaduras medias" );
insert into tb_classe (nClasse, resistencia, dano, vestimenta) values ("Clerigo","alta", "baixo", "armaduras leves" );
insert into tb_classe (nClasse, resistencia, dano, vestimenta) values ("Berserkers", "media", "alto", "armaduras pesadas" );

create table tb_personagem(
id bigint auto_increment,
nome varchar(200) not null,
vida int(4) not null,
poderAtq int(4) not null,
defesa int(4) not null,
habilidade varchar(200),
id_classe bigint,
primary key(id),
foreign key (id_classe) references tb_classe (id)
);

select * from tb_personagem;

insert into tb_personagem (nome, vida, poderAtq, defesa, habilidade, id_classe) values ("Elementalista", 9999, 4000, 1500, "controlar os elementos", 1);
insert into tb_personagem (nome, vida, poderAtq, defesa, habilidade, id_classe) values ("Arqueiro"     , 9999, 3700, 2200, "alta velocidade", 3);
insert into tb_personagem (nome, vida, poderAtq, defesa, habilidade, id_classe) values ("Ninja"        , 9999, 3500, 2000, "altissimo dano critico", 2);
insert into tb_personagem (nome, vida, poderAtq, defesa, habilidade, id_classe) values ("Curandeiro"   , 9999, 1500, 4000, "capacidade de alto cura", 4);
insert into tb_personagem (nome, vida, poderAtq, defesa, habilidade, id_classe) values ("Barbaro"      , 9999, 6000, 2000, "capacidade de almentar o dano temporariamente", 5);
insert into tb_personagem (nome, vida, poderAtq, defesa, habilidade, id_classe) values ("Necromante"   , 9999, 4000, 1500, "capacidade de roubar a vida dos personagens", 1);
insert into tb_personagem (nome, vida, poderAtq, defesa, habilidade, id_classe) values ("ladrão"       , 9999, 3500, 2000, "capacidade de ganhar mais moedas ", 2);
insert into tb_personagem (nome, vida, poderAtq, defesa, habilidade, id_classe) values  ("Druida"      , 9999, 4000, 1500, "capacidade de controlar a natureza", 1);

select * from tb_personagem where poderAtq > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome,tb_personagem.poderAtq, tb_personagem.defesa, tb_personagem.habilidade, tb_classe.nClasse
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_classe where tb_classe.id = 1;