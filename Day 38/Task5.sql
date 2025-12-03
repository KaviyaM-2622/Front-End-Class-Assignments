use prodt;

select product_id, product_name, price, quantity, total_price(product_id) AS total_amount
from products;
