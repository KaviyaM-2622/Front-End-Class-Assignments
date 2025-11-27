use employees_1;

select first_name, hire_date, year(hire_date ) as year,month(hire_date) as month
from employees_1

where year(hire_date) = 2022;
