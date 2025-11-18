-- create database departments;
use departments;
Create table departments (
	id int auto_increment primary key,
    name varchar(100) not null,
    description text );

select * from departments

insert into departments (id, name , description)
values ( 123 , 'kaviya', 'btech')
