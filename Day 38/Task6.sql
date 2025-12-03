create database orders;
use orders;

-- create table customers (
-- customer_id INT AUTO_INCREMENT PRIMARY KEY,
-- customer_name VARCHAR(100),
-- city VARCHAR(50)
-- );

-- create table orders (
-- order_id INT AUTO_INCREMENT PRIMARY KEY,
-- customer_id INT,
-- order_amount DECIMAL(10,2),
-- order_date DATE,
-- FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
-- );

-- insert into customers (customer_name, city) 
-- values('John Smith', 'New York'),
-- ('Priya Patel', 'Mumbai'),
-- ('David Kumar', 'Delhi'),
-- ('Sara Lee', 'London');

-- insert into orders (customer_id, order_amount, order_date) 
-- values(1, 5000.00, '2025-01-05'),
-- (1, 3500.00, '2025-01-10'),
-- (2, 6200.00, '2025-02-01'),
-- (1, 15000.00, '2025-02-14'),
-- (4, 8000.00, '2025-02-20');


create view customer_order_summary AS
select 
c.customer_id,
c.customer_name,
COUNT(o.order_id) AS total_orders,
SUM(o.order_amount) AS total_amount
from customers c
LEFT JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY 
c.customer_id, c.customer_name;


select*from customer_order_summary;

