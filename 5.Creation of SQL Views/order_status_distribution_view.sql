DROP VIEW IF EXISTS order_status_distribution;
CREATE VIEW order_status_distribution AS
SELECT 
    order_status,
    COUNT(*) AS total_orders
FROM orders_clean
GROUP BY order_status;