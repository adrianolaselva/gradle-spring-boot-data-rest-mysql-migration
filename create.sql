create table person (id bigint not null auto_increment, first_name varchar(255), last_name varchar(255), id_profile bigint, primary key (id))
create table profile (id bigint not null auto_increment, name varchar(255), primary key (id))
alter table person add constraint FKra20c7i4b3okp9kx7b0x1ynik foreign key (id_profile) references profile (id)
