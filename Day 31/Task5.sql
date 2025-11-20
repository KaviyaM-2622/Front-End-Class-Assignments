-- create database students;
-- use students;
-- create table stu_details (
-- id int auto_increment primary key,
-- name varchar(100),
-- course_name varchar(100),
-- course_id int auto_increment primary key
-- );

-- insert into stu_details (name, course_name)
-- values ("Kaviya", "BSC"),
-- ("Divya", "MSC"),
-- ("Iniya", "BCA")

-- select * from stu_details

create table enrollments(
stu_id int ,
course_id int 
);

insert into enrollments (stu_id, course_id)
values (111, 1234),
(222, 4567),
(333, 8911)

SELECT stu_id,
       name AS name,
       course_name
FROM stu_details s
JOIN enrollments e ON stu_id = stu_id




