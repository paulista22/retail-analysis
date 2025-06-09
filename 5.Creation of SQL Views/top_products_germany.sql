DROP VIEW IF EXISTS top_products_germany;

CREATE VIEW top_products_germany AS 
SELECT product_category_name, COUNT(DISTINCT oi.order_id) AS totals_orders, ROUND(SUM(oi.price::numeric),2) AS total_spending
FROM products_clean AS p
INNER JOIN order_items_clean AS oi
ON p.product_id = oi.product_id
INNER JOIN orders_clean AS o
ON oi.order_id = o.order_id
INNER JOIN customer_list_clean AS c
ON o.customer_trx_id = c.customer_trx_id
WHERE c.customer_country = 'Germany'
AND p.product_category_name <> '#N/A'
GROUP BY product_category_name;
