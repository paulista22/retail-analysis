DROP VIEW IF EXISTS country_delivery_stats;

CREATE VIEW country_delivery_stats AS
SELECT 
    c.customer_country,
    ROUND(AVG(EXTRACT(EPOCH FROM (o.order_delivered_customer_date - o.order_purchase_timestamp)) / 86400)::numeric, 2) AS avg_delivery_days,
    COUNT(*) AS total_deliveries
FROM orders_clean o
INNER JOIN customer_list_clean c ON o.customer_trx_id = c.customer_trx_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_country
ORDER BY avg_delivery_days;
