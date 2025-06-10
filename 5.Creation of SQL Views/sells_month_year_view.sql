DROP VIEW IF EXISTS sells_month_year;

CREATE VIEW  sells_month_year AS

SELECT TO_CHAR(order_approved_at, 'YYYY-MM') AS month_year_sells, COUNT(o.order_id) AS total_orders, ROUND(SUM(oi.price::numeric),2) AS total_sells
FROM orders_clean AS o
LEFT JOIN order_items_clean AS oi
ON o.order_id = oi.order_id
WHERE order_approved_at IS NOT NULL
GROUP BY TO_CHAR(order_approved_at, 'YYYY-MM')
ORDER BY TO_CHAR(order_approved_at, 'YYYY-MM');