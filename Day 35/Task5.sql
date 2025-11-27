ALTER TABLE employees_1
ADD phone VARCHAR(20);

UPDATE employees_1 SET phone = '9876543210' WHERE id = 1;
UPDATE employees_1 SET phone = '987-450-2211' WHERE id = 2;
UPDATE employees_1 SET phone = '980-112-3344' WHERE id = 3;
UPDATE employees_1 SET phone = '900-765-8888' WHERE id = 4;
UPDATE employees_1 SET phone = '912-345-6789' WHERE id = 5;
UPDATE employees_1 SET phone = '899-555-4412' WHERE id = 6;
UPDATE employees_1 SET phone = '909-222-1100' WHERE id = 7;
UPDATE employees_1 SET phone = '988-120-3344' WHERE id = 8;
UPDATE employees_1 SET phone = '979-441-2288' WHERE id = 9;
UPDATE employees_1 SET phone = '900-880-7766' WHERE id = 10;
UPDATE employees_1 SET phone = '912-500-9933' WHERE id = 11;
UPDATE employees_1 SET phone = '889-321-7654' WHERE id = 12;
UPDATE employees_1 SET phone = '901-777-2244' WHERE id = 13;
UPDATE employees_1 SET phone = '945-660-1122' WHERE id = 14;



select phone as original_phone, replace(phone, '-', '') AS cleaned_phone
FROM employees_1; 
