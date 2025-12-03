create database employeedb;
USE employeedb;

-- create table employees (
-- emp_id INT AUTO_INCREMENT PRIMARY KEY,
-- emp_name VARCHAR(100),
-- department VARCHAR(50),
-- salary DECIMAL(10,2)
-- );

-- DELIMITER $$
-- create procedure insert_employee(
-- IN p_emp_name VARCHAR(100),
-- IN p_department VARCHAR(50),
-- IN p_salary DECIMAL(10,2)
-- )
-- BEGIN
-- insert into employees (emp_name, department, salary)
-- values(p_emp_name, p_department, p_salary);
-- END $$

-- DELIMITER ;

CALL insert_employee('Kaviya', 'HR', 45000.00);
CALL insert_employee('Ajay', 'IT', 60000.00);

SELECT * FROM employees;

