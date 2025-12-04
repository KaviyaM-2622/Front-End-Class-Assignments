DELIMITER $$

create procedure calculate_bill(
IN p_price DECIMAL(10,2),
IN p_quantity INT,
OUT p_total_bill DECIMAL(10,2)
)
BEGIN
set p_total_bill = p_price * p_quantity;
end $$

DELIMITER ;

set @bill = 0;

CALL calculate_bill(500.50, 3, @bill);

select @bill AS total_bill;
