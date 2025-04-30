
-- Task 3A: Count Payment Status
SELECT payment_status, COUNT(*) AS total
FROM payments
GROUP BY payment_status;

-- Task 3B: Top Customers with Failed Payments
SELECT o.customer_id, COUNT(*) AS failed_payments
FROM payments p
JOIN orders o ON p.order_id = o.order_id
WHERE p.payment_status = 'failed'
GROUP BY o.customer_id
ORDER BY failed_payments DESC
LIMIT 10;
