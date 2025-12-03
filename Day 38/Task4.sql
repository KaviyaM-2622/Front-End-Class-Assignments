use prodt;

DELIMITER $$

create function total_price (pid INT)
returns decimal(10,2)
deterministic
BEGIN
declare total DECIMAL(10,2);
select price * quantity INTO total
from products
where product_id = pid;
return total;
END $$

DELIMITER ;
SELECT total_price(1) AS TotalAmount;
