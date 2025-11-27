-- ALTER TABLE employees_1
-- ADD emp_code INT;

UPDATE employees_1 SET emp_code = 1 WHERE id = 1;
UPDATE employees_1 SET emp_code = 2 WHERE id = 2;
UPDATE employees_1 SET emp_code = 3 WHERE id = 3;
UPDATE employees_1 SET emp_code = 4 WHERE id = 4;
UPDATE employees_1 SET emp_code = 5 WHERE id = 5;
UPDATE employees_1 SET emp_code = 6 WHERE id = 6;
UPDATE employees_1 SET emp_code = 7 WHERE id = 7;
UPDATE employees_1 SET emp_code = 8 WHERE id = 8;
UPDATE employees_1 SET emp_code = 9 WHERE id = 9;
UPDATE employees_1 SET emp_code = 10 WHERE id = 10;
UPDATE employees_1 SET emp_code = 11 WHERE id = 11;
UPDATE employees_1 SET emp_code = 12 WHERE id = 12;
UPDATE employees_1 SET emp_code = 13 WHERE id = 13;
UPDATE employees_1 SET emp_code = 14 WHERE id = 14;



-- SELECT emp_code,LPAD(emp_code, 4, '0') AS emp_code_padded
-- FROM employees_1;


SELECT emp_code,LPAD(emp_code, 10, '33333') AS emp_code_padded
FROM employees_1;
