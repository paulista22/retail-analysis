DROP VIEW IF EXISTS product_payment;

CREATE VIEW product_payment AS 
(SELECT p.product_category_name,
COUNT(CASE WHEN op.payment_type = 'prepaid_card' THEN 1 END) AS prepaid_Card,
COUNT(CASE WHEN op.payment_type = 'debit_card' THEN 1 END) AS debit_Card,
COUNT(CASE WHEN op.payment_type = 'voucher' THEN 1 END) AS vocuher,
COUNT(CASE WHEN op.payment_type = 'credit_card' THEN 1 END) AS credit_card
FROM products_clean AS p
INNER JOIN order_items_clean AS oi
ON p.product_id = oi.product_id
INNER JOIN order_payments_clean AS op
ON oi.order_id = op.order_id
WHERE p.product_category_name <> '#N/A'
GROUP BY p.product_category_name
ORDER BY p.product_category_name);