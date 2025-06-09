CREATE VIEW products_score AS
SELECT p.product_category_name, AVG(r.review_score) AS avg_score
FROM products_clean AS p
INNER JOIN order_items_clean AS o
ON p.product_id = o.product_id
INNER JOIN order_reviews_clean AS r
ON r.order_id = o.order_id
GROUP BY product_category_name
ORDER BY avg_score DESC;