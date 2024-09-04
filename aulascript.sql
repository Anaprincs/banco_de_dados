create database resdes_sociais;
use resdes_sociais;

create table usuarios (
idusuarios int not null unique auto_increment primary key,
nome varchar(100) not null unique,
email varchar(100) not null unique,
data_criacao datetime not null
);

create table postagens (
idpostagem int primary key not null auto_increment,
texto varchar(100) not null,
imagem varchar(100) ,
data_publicacao datetime not null,
usuarios_idusuarios int not null
);

create table comentarios(
id int not null primary key auto_increment,
texto varchar(100) not null,
data_publicacao datetime not null,
usuarios_idusuarios int not null,
postagem_idpostagem int not null,
foreign key (usuarios_idusuarios) references usuarios (idusuarios),
foreign key (postagem_idpostagem) references postagens (idpostagem)
);

create table curtidas (
usuarios_idusuarios int not null,
postagem_idpostagem int not null,
primary key (usuarios_idusuarios, postagem_idpostagem) ,
foreign key (usuarios_idusuarios) references usuarios (idusuarios),
foreign key (postagem_idpostagem) references postagens (idpostagem)
);

insert into usuarios( idusuarios, nome, email, data_criacao)
values (1, 'Anaprincs', 'anaprincs@gmail.com', '2020-08-29');
insert into usuarios( idusuarios, nome, email, data_criacao)
values ();





