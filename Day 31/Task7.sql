-- use edu_platform

-- -- create table assignments (
-- --     assignment_id int auto_increment primary key,
-- --     course_id int,
-- --     title varchar(100),
-- --     description text,
-- --     due_date date
-- -- );

-- insert into assignments ( course_id, title, description , due_date)
-- values(50, "Frontend", "HTML", '2025-04-04'),
-- (60, " Frontend", "CSS", '2025-02-02')

create table lessons (
    lesson_id INT AUTO_INCREMENT PRIMARY KEY,
    lesson_title VARCHAR(150),
    course_id int
);

insert into lessons (lesson_title, course_id)
values('Introduction to Programming', 1),
('Variables and Data Types', 1),
('HTML Basics', 2),
('CSS Styling', 2);
