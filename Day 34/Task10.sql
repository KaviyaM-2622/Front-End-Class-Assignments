INSERT INTO employees_1 (first_name, last_name, department, salary, hire_date, active)
VALUES
('Kiran', 'Patel', 'Finance', 48000.00, '2023-06-22', 1),
('Sanjay', 'Verma', 'Marketing', 105000.00, '2024-01-05', 1);

select * from employees_1
WHERE salary NOT BETWEEN 50000 AND 80000;