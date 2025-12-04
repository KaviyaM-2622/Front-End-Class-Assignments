create database students_1;
use students_1;

create table stud_1 (
id int auto_increment primary key,
name varchar(50),
department varchar(50),
marks int
); 

insert into stud_1 (name, department, marks) 
values('Kaviya', 'CSE', 85),
('Sai', 'ECE', 78),
('Divya', 'IT', 92),
('rAM', 'EEE', 67);

DELIMITER $$

create procedure get_all_students()
BEGIN
select * from stud_1;
end $$

DELIMITER ;

CALL get_all_students();

