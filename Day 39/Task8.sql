create database user;
use user;

create table user_log (
log_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
login_time DATETIME
);

DELIMITER $$

create procedure log_user_login(
IN p_user_id INT
)
BEGIN
insert into user_log (user_id, login_time)
values (p_user_id, NOW());
END $$

DELIMITER ;
CALL log_user_login(1);
