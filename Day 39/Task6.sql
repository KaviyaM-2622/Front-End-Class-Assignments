use orders;

DELIMITER $$

create procedure insert_order(
IN p_customer_id INT,
IN p_order_amount DECIMAL(10,2),
IN p_order_date DATE
)
BEGIN
insert into orders (customer_id, order_amount, order_date)
values (p_customer_id, p_order_amount, p_order_date);
END $$

DELIMITER ;

CALL insert_order(1, 2500.50, '2025-12-04');
