DROP VIEW IF EXISTS common_payments;

CREATE VIEW common_payments AS 
SELECT payment_type, COUNT(*) AS totals
FROM order_payments_clean
GROUP BY payment_type;