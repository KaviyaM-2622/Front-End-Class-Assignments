use employees_1;
select case
WHEN TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) < 1 THEN '<1 year'
WHEN TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) BETWEEN 1 AND 3 THEN '1–3 years'
WHEN TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) BETWEEN 3 AND 5 THEN '3–5 years'
ELSE '5+ years'
END AS tenure_bucket,

COUNT(*) AS employee_count

FROM employees_1
GROUP BY tenure_bucket;
