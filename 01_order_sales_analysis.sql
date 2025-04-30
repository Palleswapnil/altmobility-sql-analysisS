
-- Task 1A: Count of Orders by Status
SELECT order_status, COUNT(*) AS total_orders
FROM orders
GROUP BY order_status;

-- Task 1B: Monthly Revenue from Delivered Orders
SELECT substr(order_date, 1, 7) AS month, SUM(order_amount) AS total_revenue
FROM orders
WHERE order_status = 'delivered'
GROUP BY month
ORDER BY month;
