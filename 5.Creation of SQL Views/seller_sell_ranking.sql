CREATE VIEW seller_sell_ranking AS(
    SELECT s.seller_name, s.seller_country, COUNT(DISTINCT order_id) AS totals_sells
FROM sellers_clean AS s
INNER JOIN order_items_clean AS oi
ON s.seller_id = oi.seller_id
GROUP BY s.seller_name, s.seller_country);