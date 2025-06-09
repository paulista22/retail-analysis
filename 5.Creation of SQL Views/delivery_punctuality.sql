DROP VIEW IF EXISTS delivery_punctuality;
CREATE VIEW delivery_punctuality AS
SELECT 
    order_id,
    order_delivered_customer_date,
    order_estimated_delivery_date,
    CASE 
        WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 'Late'
        ELSE 'On Time'
    END AS delivery_status
FROM orders_clean
WHERE order_status = 'delivered';