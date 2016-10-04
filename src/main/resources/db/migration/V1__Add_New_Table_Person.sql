
create table person (
	id int(10) not null auto_increment, 
	first_name varchar(255) not null, 
	last_name varchar(255) not null, 
	primary key (id)
);

insert into person (first_name, last_name) values ('Adriano', 'Moreira La Selva');