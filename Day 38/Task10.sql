create database all3;

create table customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(100)
);

create table products(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100),
price DECIMAL(10,2)
);

create table orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
product_id INT,
quantity INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

insert into customers (customer_name) 
VALUES('John Smith'),
('Priya Patel');

insert into products (product_name, price)
VALUES('Laptop', 50000),
('Mobile', 20000);

insert into orders (customer_id, product_id, quantity, order_date) 
VALUES(1, 1, 2, '2025-12-03'),
(2, 2, 1, '2025-12-03');

CREATE VIEW order_summary AS
SELECT
o.order_id,
c.customer_id,
c.customer_name,
p.product_id,
p.product_name,
o.quantity,
p.price,
(o.quantity * p.price) AS total_amount,
o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;
