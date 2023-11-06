-- Active: 1699276139036@@127.0.0.1@3306@assignment
SELECT c.customer_name,SUM(oi.quantity * p.unit_price) AS total_purchase_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_purchase_amount DESC
LIMIT 5;
