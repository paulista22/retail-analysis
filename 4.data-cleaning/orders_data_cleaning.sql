SELECT DISTINCT order_status
FROM orders_clean;

SELECT *
FROM orders_clean
WHERE order_approved_at IS NULL;

SELECT count(*)
FROM orders_clean
WHERE order_approved_at IS NULL;

SELECT *
FROM orders_clean
WHERE order_delivered_carrier_date IS NULL;

SELECT count(*)
FROM orders_clean
WHERE order_delivered_carrier_date IS NULL;

SELECT *
FROM orders_clean
WHERE order_delivered_customer_date IS NULL;

SELECT count(*)
FROM orders_clean
WHERE order_delivered_customer_date IS NULL;