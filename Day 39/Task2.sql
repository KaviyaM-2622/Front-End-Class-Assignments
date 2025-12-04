use employeedb;
drop procedure if exists get_employees_by_id;

DELIMITER $$

create procedure get_employees_by_id(IN empid INT)
BEGIN
select * from employees
WHERE emp_id = empid;
END $$

DELIMITER ;

CALL get_employees_by_id(2);

