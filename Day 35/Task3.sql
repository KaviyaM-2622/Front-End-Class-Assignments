-- ALTER TABLE employees_1
-- add email VARCHAR(255);
--  
UPDATE employees_1 SET email = 'kaviya@gmail.com' WHERE id = 1;
UPDATE employees_1 SET email = 'divya@gmail.com' WHERE id = 2;
UPDATE employees_1 SET email = 'anu@gmail.com' WHERE id = 3;
UPDATE employees_1 SET email = 'sharma@gmail.com' WHERE id = 4;
UPDATE employees_1 SET email = 'meena@gmail.com' WHERE id = 5;
UPDATE employees_1 SET email = 'rahul@gmail.com' WHERE id = 6;
UPDATE employees_1 SET email = 'sanjay@gmail.com' WHERE id = 7;
UPDATE employees_1 SET email = 'arun@gmail.com'     WHERE id = 8;
UPDATE employees_1 SET email = 'priya@gmail.com'    WHERE id = 9;
UPDATE employees_1 SET email = 'karthik@gmail.com'  WHERE id = 10;
UPDATE employees_1 SET email = 'sneha@gmail.com'    WHERE id = 11;
UPDATE employees_1 SET email = 'vijay@gmail.com'    WHERE id = 12;
UPDATE employees_1 SET email = 'lavanya@gmail.com'  WHERE id = 13;
UPDATE employees_1 SET email = 'ramesh@gmail.com'   WHERE id = 14;



SELECT id,email AS raw_email,TRIM(email) AS trimmed_email FROM employees_1
where TRIM(email) <> email;

select * from employees_1