create table profile (
	id int(10) not null auto_increment, 
	name varchar(255) not null,  
	primary key (id)
);

insert into profile (name) values ('Admin');
insert into profile (name) values ('User');

create table person (
	id int(10) not null auto_increment,
	id_profile int(10) not null, 
	first_name varchar(255) not null, 
	last_name varchar(255) not null,
	foreign key(id_profile) references profile(id),
	primary key (id)
);

insert into person (id_profile,first_name, last_name) values (1,'Adriano', 'Moreira La Selva');
