
-- Task 2A: Repeat Customers
SELECT customer_id, COUNT(order_id) AS num_orders
FROM orders
GROUP BY customer_id
HAVING num_orders > 1
ORDER BY num_orders DESC;
