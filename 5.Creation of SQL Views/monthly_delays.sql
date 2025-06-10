DROP VIEW IF EXISTS monthly_delays;
CREATE VIEW monthly_delays AS
SELECT 
    DATE_TRUNC('month', order_purchase_timestamp) AS purchase_month,
    COUNT(*) FILTER (WHERE order_delivered_customer_date > order_estimated_delivery_date) AS late_orders,
    COUNT(*) FILTER (WHERE order_delivered_customer_date <= order_estimated_delivery_date) AS on_time_orders,
    COUNT(*) AS total_orders
FROM orders_clean
WHERE order_status = 'delivered'
GROUP BY purchase_month
ORDER BY purchase_month;