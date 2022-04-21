SELECT company_name, sum(quantity)
FROM orders_have_details AS d
INNER JOIN orders AS o
ON d.order_id = o.order_id
INNER JOIN customers AS c
ON o.customer_id = c.customer_id
GROUP BY company_name
ORDER BY sum(quantity) DESC;
