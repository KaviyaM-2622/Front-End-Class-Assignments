create database employees_1;
use employees_1
create table employees_1(
id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary decimal(10,2),
hire_date DATE,
);

insert into employees_1 (first_name, last_name, department, salary, hire_date)
values
('Kaviya', 'M', 'HR', 80000, '2023-04-15'),
('Divya', 'M', 'IT', 95000, '2022-11-10'),
('Santhiya', 'K', 'Finance', 72000, '2021-06-20'),
('Iniya', 'P', 'Marketing', 78000, '2024-01-05'),
('Packiya', 'R', 'Operations', 65000, '2023-09-30');


select first_name, salary from employees_1
where salary > 75000;

