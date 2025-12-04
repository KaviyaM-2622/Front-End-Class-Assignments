use orders;

DELIMITER $$

DROP PROCEDURE IF EXISTS increase_product_price $$

create procedure increase_product_price(
IN prod_id INT,         
IN percentage decimal(5,2)  
)
BEGIN
IF prod_id = 0 THEN
update products
set price = price + (price * percentage / 100);
else
update products
set price = price + (price * percentage / 100)
where product_id = prod_id;
END IF;
END $$

DELIMITER ;

CALL increase_product_price(2, 10);

CALL increase_product_price(0, 5);
