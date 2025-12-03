use tax;

ALTER TABLE products
ADD COLUMN stock INT DEFAULT 0;

DELIMITER $$

create procedure update_product_stock(
IN p_product_id INT,
IN p_new_stock INT
)
BEGIN
UPDATE products
SET stock = p_new_stock
WHERE product_id = p_product_id;
END $$

DELIMITER ;

CALL update_product_stock(1, 20);  
SELECT * FROM products;
