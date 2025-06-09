DROP VIEW IF EXISTS view_total_delivery_time;

CREATE VIEW delivery_time_view AS
SELECT 
    order_id,
    order_purchase_timestamp,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
    order_estimated_delivery_date,
    order_delivered_customer_date - order_purchase_timestamp AS total_delivery_days
FROM orders_clean
WHERE order_status = 'delivered';