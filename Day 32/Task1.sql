create database employees;
use employees
create table employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

insert into employees ( name, position,department, salary)
values ("Kaviya", "Senior Manager","HR",55000.00),
("Divya", "Graduate Trainee", "Non-IT",35000.00),
("Priya", "Developer", "IT",30000.00)
