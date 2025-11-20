-- create database departments;
use departments;
Create table departments (
	id int auto_increment primary key,
    name varchar(100) not null,
    description text );

select * from departments

insert into departments ( name , description)
values ( 'kaviya', 'btech'),
('divya', 'mtech')

select name
from departments;