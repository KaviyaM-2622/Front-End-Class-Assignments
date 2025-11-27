use employees_1;

select id, first_name, hire_date, datediff(NOW(), hire_date) as days_worked from employees_1
where id=1;

