create database tax;
use tax;

create table products(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(50),
price DECIMAL(10,2)
);

DELIMITER $$

create function calculate_tax(price DECIMAL(10,2))
returns decimal(10,2)
DETERMINISTIC
BEGIN
    declare tax_amount DECIMAL(10,2);
    set tax_amount = price * 0.18;  -- 18% tax
    return tax_amount;
END $$

DELIMITER ;

select product_name,price,
calculate_tax(price) AS tax_value,
price + calculate_tax(price) AS total_price
from products;


insert into  products(product_name, price) VALUES
('Laptop', 50000),
('Mobile', 20000),
('Headphones', 3000);
