create database prodt;
use prodt;

-- create table products (
-- product_id INT AUTO_INCREMENT PRIMARY KEY,
-- product_name VARCHAR(100),
-- price DECIMAL(10,2),
-- quantity INT
-- );

-- insert into products (product_name, price, quantity) 
-- VALUES('Laptop', 55000.00, 10),
-- ('Mouse', 500.00, 50),
-- ('Keyboard', 800.00, 35);

DELIMITER $$

create procedure get_product_details (IN id INT)
BEGIN
    select product_id, product_name, price, quantity
    from products
    where product_id = id;
END $$

DELIMITER ;

CALL get_product_details(3);

