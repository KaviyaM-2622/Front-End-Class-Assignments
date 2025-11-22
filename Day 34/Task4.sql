alter table employees_1
ADD active TINYINT(1) DEFAULT 1;

select*from employees_1
where active = 0;
