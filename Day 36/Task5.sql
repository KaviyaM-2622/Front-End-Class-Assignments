use persons;

create table students (
    id int,
    roll int
);
insert into students values (1, 5), (2, 45), (3, 321), (4, 9999);
select 
    id,
    LPAD(roll, 4, '0') AS formatted_roll
from students;
