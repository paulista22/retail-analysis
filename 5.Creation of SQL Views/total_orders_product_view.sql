DROP VIEW IF EXISTS total_orders_product;

CREATE VIEW  total_orders_products AS (
    SELECT 
        p.product_category_name, c.customer_country AS country, ROUND(SUM(oi.price::numeric)) AS total_Sell,
        COUNT(oi.order_id) AS total_orders
    FROM 
        order_items as oi
    INNER JOIN products_clean AS p
    ON oi.product_id = p.product_id
    INNER JOIN orders_clean AS oc 
    ON oi.order_id = oc.order_id
    INNER JOIN customer_list_clean AS c
    ON oc.customer_trx_id = c.customer_trx_id
    WHERE p.product_category_name <> '#N/A'
    GROUP BY p.product_category_name, c.customer_country);
        