select department,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS lowest_salary,
    MAX(salary) AS highest_salary
from employees_1
GROUP BY department;

INSERT INTO employees_1 (first_name, last_name, department, salary, hire_date)
VALUES
('Ravi', 'Kumar', 'HR', 60000, '2023-05-10'),
('Anu', 'Sharma', 'HR', 90000, '2022-11-18'),
('Sita', 'Rao', 'HR', 75000, '2024-02-22');

