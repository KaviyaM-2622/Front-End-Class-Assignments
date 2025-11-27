USE employees_1;
ALTER TABLE employees_1
ADD COLUMN username VARCHAR(100);

UPDATE employees_1
SET username = LOWER(concat(substring(first_name, 1, 1),last_name,LPAD(id, 3, '0')))
WHERE id > 0;

select * from employees_1