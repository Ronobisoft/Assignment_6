-- Active: 1699276139036@@127.0.0.1@3306@assignment
SELECT c.category_name,SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM categories c
INNER JOIN products p ON c.category_id = p.category_id
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY c.category_name
ORDER BY total_revenue DESC;
