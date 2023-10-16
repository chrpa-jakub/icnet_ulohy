drop table if exists icnet_chrpa_jakub.employment
drop table if exists icnet_chrpa_jakub.employee
drop table if exists icnet_chrpa_jakub.city
drop table if exists icnet_chrpa_jakub.insurer
drop table if exists icnet_chrpa_jakub.workplace


drop schema if exists icnet_chrpa_jakub
go
create schema icnet_chrpa_jakub
go

create table icnet_chrpa_jakub.city
(
	city_id int identity,
	city_name varchar(255) not null,
	constraint city_pk
		primary key (city_id)
)
go

create table icnet_chrpa_jakub.insurer
(
	insurer_id int identity,
	insurer_name varchar(255) not null,
	constraint insurer_pk
		primary key (insurer_id)
)
go

create table icnet_chrpa_jakub.employee
(
	employee_id int identity,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	insurer_id int not null,
	city_id int not null,
	constraint employee_pk
		primary key (employee_id),
	constraint employee_city_city_id_fk
		foreign key (city_id) references icnet_chrpa_jakub.city,
	constraint employee_insurer_insurer_id_fk
		foreign key (insurer_id) references icnet_chrpa_jakub.insurer
)
go

create table icnet_chrpa_jakub.workplace
(
	workplace_id int identity,
	workplace_name varchar(255) not null,
	constraint workplaces_pk
		primary key (workplace_id)
)
go

create table icnet_chrpa_jakub.employment
(
	employment_id int identity,
	employee_id int not null,
	workplace_id int not null,
	constraint employment_pk
		primary key (employment_id),
	constraint employment_employee_employee_id_fk
		foreign key (employee_id) references icnet_chrpa_jakub.employee,
	constraint employment_workplace_workplace_id_fk
		foreign key (workplace_id) references icnet_chrpa_jakub.workplace
)
go

go

