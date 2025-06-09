DROP VIEW IF EXISTS avg_processing_time;
CREATE VIEW avg_processing_time AS
SELECT 
    ROUND(AVG(EXTRACT(EPOCH FROM (order_approved_at - order_purchase_timestamp)) / 86400), 2) AS avg_approval_time_days,
    ROUND(AVG(EXTRACT(EPOCH FROM (order_delivered_carrier_date - order_approved_at)) / 86400), 2) AS avg_shipping_dispatch_time_days,
    ROUND(AVG(EXTRACT(EPOCH FROM (order_delivered_customer_date - order_delivered_carrier_date)) / 86400), 2) AS avg_transport_time_days,
    ROUND(AVG(EXTRACT(EPOCH FROM (order_delivered_customer_date - order_purchase_timestamp)) / 86400), 2) AS avg_total_delivery_time_days
FROM orders_clean
WHERE order_status = 'delivered';
