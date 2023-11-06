-- Active: 1699276139036@@127.0.0.1@3306@assignment
SELECT c.customer_id,c.customer_name,COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;
