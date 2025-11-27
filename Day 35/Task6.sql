use  employees_1;

create table employee_contacts_clean(
    id INT PRIMARY KEY,
    clean_email VARCHAR(100),
    clean_phone VARCHAR(20));
    
INSERT INTO employee_contacts_clean (id, clean_email, clean_phone)
SELECT 
    id, LOWER(TRIM(email)) AS clean_email,
    REGEXP_REPLACE(phone, '[^0-9]', '') AS clean_phone FROM employees_1;
    
select * from employees_1