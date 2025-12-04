use employeedb;

DELIMITER $$

create procedure get_employees_by_salary_range(
IN min_salary INT,
IN max_salary INT
)
BEGIN
select * from employees
WHERE salary BETWEEN min_salary AND max_salary;
END $$
    
DELIMITER ;
CALL get_employees_by_salary_range(20000, 50000);
