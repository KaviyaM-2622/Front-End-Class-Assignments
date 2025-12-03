use studentdetails;

create table marks (
mark_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT,
marks INT
);
insert into marks (student_id, marks)
values(1, 92),
(2, 85),
(3, 78),
(4, 88),
(5, 67);

create view student_marks_view AS
select s.id AS student_id, s.name, m.marks
from student_details_1 s
join marks m ON s.id = m.student_id;

select * from student_marks_view;
