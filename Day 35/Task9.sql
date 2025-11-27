use employees_1;
  
SELECT YEAR(hire_date) AS hire_year,MONTH(hire_date) AS hire_month,
DATE_FORMAT(MIN(hire_date), '%M %Y') AS month_name,
COUNT(*) AS total_hires
FROM employees_1

WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 24 MONTH)

GROUP BY YEAR(hire_date), MONTH(hire_date)

ORDER BY hire_year DESC, hire_month DESC;

select * from employees_1