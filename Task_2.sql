-- Active: 1699276139036@@127.0.0.1@3306@assignment
SELECT o.order_id,p.product_name,oi.quantity,(oi.quantity * oi.unit_price) AS total_amount
FROM order_items oi
INNER JOIN orders o ON oi.order_id = o.order_id
INNER JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_id ASC;
