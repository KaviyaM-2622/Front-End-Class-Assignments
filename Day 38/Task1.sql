create database studentdetails;
use studentdetails;

create table student_details_1(
id int,
name varchar(50),
marks int);

insert into student_details_1 (name, marks) 
values ('Divya', 92),
('Arjun', 85),
('Kaviya', 78),
('Rahul', 88),
('Sneha', 67);

create view high_scorers AS
select name, marks
from student_details_1
WHERE marks > 80;

-- select * from high_scorers;
