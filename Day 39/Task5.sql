use students_1;
-- DESC stud_1;

-- alter table stud_1
-- add phone_number VARCHAR(15);

-- DROP PROCEDURE IF EXISTS update_student_phone;


DELIMITER $$

create procedure update_student_phone(
IN stu_id INT,
IN new_phone VARCHAR(15)
)
BEGIN
update stud_1
set phone_number = new_phone
where id = stu_id;
END $$

DELIMITER ;
CALL update_student_phone(3, '7856634578');
