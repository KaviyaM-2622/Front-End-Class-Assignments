-- create database edu_platform;
-- use edu_platform;

-- create table assignments (
--     assignment_id int auto_increment primary key,
--     course_id int,
--     title varchar(100),
--     description text,
--     due_date date
-- );

insert into assignments ( course_id, title, description , due_date)
values(50, "Frontend", "HTML", '2025-04-04'),
(60, " Frontend", "CSS", '2025-02-02')

select * from assignments