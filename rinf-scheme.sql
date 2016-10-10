drop database if exists rinf;
create database rinf;
use rinf;

/*o usuario cadastra as cidades, mas pra cadastrar, a caixa de texto onde ele vai colocar o nome dela, vai mostrar os resultados que ja existem. estilo auto complete*/
create table cities(
	id int auto_increment,
	name varchar(50),
	primary key (id)
);

/*o usuario cadastra as escolas, mas pra cadastrar, a caixa de texto onde ele vai colocar o nome dela, vai mostrar os resultados que ja existem. estilo auto complete*/
create table schools(
	id int auto_increment,
	name varchar(50),
	primary key (id)
);

create table extra_course(
	id int auto_increment,
	name varchar(50),
	primary key(id)
);

create table users(
	email varchar(50) not null,
	name varchar(50) not null,
	pass varchar(40) not null,
	img varchar(50) default 'userProfile/profile-picture-placeholder.png',
	grade varchar(10),
	sex char(1),
	id_schools int,
	id_cities int,
	id_extra_course int,
	cellphone varchar(20),
	birthdate date,
	bio text,
	validated tinyint(1) default 0, -- 1 to true; 0 to false
	primary key (email),
	foreign key (id_cities) references cities(id),
	foreign key (id_schools) references schools(id),
	foreign key (id_extra_course) references extra_course(id),
	constraint cs_sex check(sex in ('f','m','o')),
	constraint cs_val check(validated in (0,1))
);

create table reputation(
	id int auto_increment,
	id_target varchar(50) not null,
	id_commenter varchar(50) not null,
	stance char(1) not null, -- posição, postura: em relação ao comentario
	message text not null,
	primary key (id),
	foreign key (id_target) references users(email),
	foreign key (id_commenter) references users(email),
	constraint cs_stance check(stance in ('l','d')) -- 'l'ike / 'd'islike
);

/*o usuário pode ter mais de um email vinculado à conta*/
create table emails(
	email varchar(100) not null,
	id_users varchar(50) not null,
	primary key (email),
	foreign key (id_users) references users(email)
);

create table friends(
	id int auto_increment,
	id_request varchar(50) not null,
	id_target varchar(50) not null,
	date_sent datetime not null,
	date_anwser datetime,
	`status` char(1) default 'p',
	primary key (id),
	foreign key (id_request) references users(email),
	foreign key (id_target) references users(email),
	constraint cs_status check(status in ('p','a','d')) /*'p': pendente; 'a': accepted; 'd': declined*/
);

create table tags(
	id int auto_increment,
	description varchar(50),
	primary key (id)
);

create table groups(
	id int auto_increment,
	name varchar(40),
	tags int,
	primary key (id),
	foreign key (tags) references tags(id)
);

create table rel_groups(
	id_users varchar(50),
	id_groups int,
	is_adm tinyint(1), -- 0 - não é adm; 1 - é adm
	primary key (id_users, id_groups),
	foreign key (id_users) references users(email),
	foreign key (id_groups) references groups(id),
	constraint cs_ck check(is_adm in (0,1))
);

create table type_posts(
	id int auto_increment,
	description varchar(30),
	primary key (id)
);

create table posts(
	id int auto_increment,
	id_users varchar(50) not null,
	id_groups int,
	content text not null,
	id_type int,
	`date` date not null, 
	`time` time not null,
	can_comments tinyint(1) default 1, -- recebe {0, 1}. 1: true; 0: false;
	primary key (id),
	foreign key (id_users) references users(email),
	foreign key (id_groups) references groups(id),
	foreign key (id_type) references type_posts(id),
	constraint cs_cc check(can_comments in (0,1))
);

create table comments(
	id int auto_increment,
	id_comments int,
	id_users varchar(50),
	content text not null,
	`date` date not null,
	`time` time not null,
	primary key (id),
	foreign key (id_users) references users(email),
	foreign key (id_comments) references comments(id)
);

create table rel_comments(
	id_comments int not null,
	id_posts int not null,
	primary key (id_comments, id_posts),
	foreign key (id_comments) references comments(id),
	foreign key (id_posts) references posts(id)
);

create table area(
	id int auto_increment,
	description varchar(30),
	primary key (id)
);

create table rel_areas(
	id_posts int not null,
	id_area int not null,
	primary key (id_posts, id_area),
	foreign key (id_posts) references posts(id),
	foreign key (id_area) references areas(id)
);

create table marks(
	id int auto_increment,
	id_users varchar(50) not null,
	id_area int not null,
	mark float not null,
	primary key(id)
);

create table feeds(
	id_me varchar(50) not null,
	id_following varchar(50) not null,
	primary key (id_me, id_following),
	foreign key (id_me) references users(email) ,
	foreign key (id_following) references users(email)
);

create table notifications(
	id int auto_increment,
	id_users varchar(50) not null,
	content text not null,
	`date` date not null,
	`time` time not null,
	seen tinyint default 0, -- 1: visto / 0:não visto
	primary key (id),
	foreign key (id_users) references users(email),
	constraint cs_s0 check(seen in (0,1))
);
