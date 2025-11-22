create database products;
use products
create table products (
id int auto_increment primary key,
name varchar(100),
price decimal(10,2),
created_at datetime default current_timestamp
); 