DROP VIEW IF EXISTS best_selling_category;

CREATE VIEW best_selling_category AS

SELECT product_category_name, COUNT(o.order_id)  AS totals_orders
FROM products_clean AS p
INNER JOIN  order_items AS o
ON p.product_id = o.product_id
WHERE p.product_category_name <> '#N/A'
GROUP BY product_category_name
order by totals_orders DESC;