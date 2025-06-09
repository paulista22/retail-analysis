DROP VIEW IF EXISTS avg_shopping_car;

CREATE VIEW  avg_shopping_car AS

SELECT TO_CHAR(o.order_purchase_timestamp, 'YYYY-MM') AS date, ROUND(AVG(oi.price::numeric),2) AS avg_shopping_car
FROM orders_clean AS o
LEFT JOIN order_items_clean AS oi
ON o.order_id = oi.order_id
GROUP BY TO_CHAR(order_purchase_timestamp, 'YYYY-MM')