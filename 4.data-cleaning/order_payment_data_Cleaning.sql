SELECT 'order_id' AS column_name, COUNT(*) AS null_count FROM order_payments_clean WHERE order_id IS NULL
UNION ALL
SELECT 'payment_sequential', COUNT(*) FROM order_payments_clean WHERE payment_sequential IS NULL
UNION ALL
SELECT 'payment_type', COUNT(*) FROM order_payments_clean WHERE payment_type IS NULL
UNION ALL
SELECT 'payment_installments', COUNT(*) FROM order_payments_clean WHERE payment_installments IS NULL
UNION ALL
SELECT 'payment_value', COUNT(*) FROM order_payments_clean WHERE payment_value IS NULL;

SELECT 
  *,
  COUNT(*) AS total
FROM order_payments_clean
GROUP BY 
  order_id,
  payment_sequential,
  payment_type,
  payment_installments,
  payment_value
HAVING COUNT(*) > 2;

SELECT DISTINCT payment_type
FROM order_payments_clean;

SELECT *
FROM order_payments_clean
WHERE payment_type = 'not_defined';

DELETE FROM order_payments_clean
WHERE payment_type= 'not_defined';

SELECT *
FROM order_payments_clean;