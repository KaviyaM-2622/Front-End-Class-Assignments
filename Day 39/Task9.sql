-- use orders;

-- CREATE TABLE IF NOT EXISTS orders (
-- order_id INT AUTO_INCREMENT PRIMARY KEY,
-- customer_id INT NOT NULL,
-- order_amount DECIMAL(10,2) NOT NULL,
-- order_date DATE NOT NULL
-- );

-- insert into orders (customer_id, order_amount, order_date) VALUES
-- (1, 500.00, '2025-03-05'),
-- (2, 750.50, '2025-03-15'),
-- (1, 200.00, '2025-04-01'),
-- (3, 1200.00, '2025-03-20');

USE orders;

DELIMITER $$

DROP PROCEDURE IF EXISTS total_sales_for_month $$

create procedure total_sales_for_month(
IN input_month INT,    
IN input_year INT,       
OUT total_sales decimal(10,2)  
)
BEGIN
select SUM(order_amount)
into total_sales
from orders
where MONTH(order_date) = input_month
and YEAR(order_date) = input_year;
END $$

DELIMITER ;

set @sales = 0;

call total_sales_for_month(3, 2025, @sales);

select @sales;
