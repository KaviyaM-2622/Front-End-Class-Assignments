use employeedb;

DELIMITER $$

create procedure get_highest_salary(OUT highest_sal INT)
BEGIN
select MAX(salary) into highest_sal
from employees;
END $$

DELIMITER ;

CALL get_highest_salary(@max_salary);

select @max_salary;
