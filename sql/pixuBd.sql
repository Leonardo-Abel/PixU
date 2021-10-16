create database PixU collate Latin1_General_CI_AS

use PixU

create table usuario(
id_usuario int primary key not null identity,
nome nvarchar(30) not null,
email nvarchar(255) unique not null,
senha nvarchar(20) not null,
stUsuario int not null,
)
select * from usuario


drop table usuario

insert into usuario(nome, email, senha, stUsuario) 
values ('Leticia Cardana', 'leticiacardana@yahoo.com.br', '7531595',1)

insert into usuario (nome, email, senha, stUsuario) 
values ('Layza Vitoria', 'layzavitoria@gmail.com', '321456987',1)

insert into usuario (nome, email, senha, stUsuario) 
values ('Amanda Mendes', 'amandamendes@gmail.com', '9513575',1)

insert into usuario (nome, email, senha, stUsuario) 
values ('Leonardo Abel', 'leonardoabel@gmail.com', '794613258',1)

select * from usuario

create table avaliacao(
estrelas varchar(10),
email nvarchar(255) not null,
constraint fk_emailUsuario foreign key (email) references usuario (email)
)

create table mensagens(
mensagens nvarchar(300),
email nvarchar(255) not null,
constraint fk_emailMens foreign key (email) references usuario (email)
)

alter table mensagens add dataMess date not null

create table personagem(
idPers int primary key not null identity,
olhos nvarchar(10) not null,
cabelo nvarchar(10) not null,
corDePele nvarchar(10) not null,
roupa nvarchar(10) not null,
acessorios nvarchar(10) not null,
email nvarchar(255) unique not null,
constraint fk_emailPers foreign key (email) references usuario (email)  
)