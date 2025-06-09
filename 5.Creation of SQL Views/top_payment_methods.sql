CREATE VIEW top_payment_methods AS 
SELECT payment_type, COUNT(*) AS totals
FROM order_payments_clean
GROUP BY payment_type;