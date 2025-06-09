DROP VIEW IF EXISTS customers_profile;

CREATE VIEW  customers_profile AS
SELECT DISTINCT c.subscriber_id, COUNT(o.order_id) AS total_orders, c.customer_country, c.gender, c.age, c.subscribe_date, ROUND((SUM(i.price::numeric)),2) AS total_spending
FROM orders_clean AS o
LEFT JOIN customer_list_clean AS c
ON o.customer_trx_id = c.customer_trx_id
LEFT JOIN order_items_clean AS i
ON o.order_id = i.order_id
GROUP BY c.subscriber_id, c.customer_country,c.gender, c.age, c.subscribe_date
ORDER BY total_orders DESC;