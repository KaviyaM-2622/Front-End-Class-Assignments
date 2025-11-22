select department, COUNT(*) AS total_employees
from employees_1
GROUP BY department
HAVING COUNT(*) < 5;
