SELECT *, COUNT(*) AS total
from order_items
GROUP BY order_id, order_item_id, product_id, seller_id, shipping_limit_date, price, freight_value
HAVING count(*) >2;

SELECT COUNT(*) AS null_count_order_id
FROM order_items
WHERE order_id IS NULL;

SELECT COUNT(*) AS null_count_order_item_id
FROM order_items
WHERE order_item_id IS NULL;

SELECT COUNT(*) AS null_count_product_id
FROM order_items
WHERE product_id IS NULL;

SELECT COUNT(*) AS null_count_seller_id
FROM order_items
WHERE seller_id IS NULL;

SELECT COUNT(*) AS null_count_shipping_limit_date
FROM order_items
WHERE shipping_limit_date IS NULL;

SELECT COUNT(*) AS null_count_price
FROM order_items
WHERE price IS NULL;

SELECT COUNT(*) AS null_count_freight_value
FROM order_items
WHERE freight_value IS NULL;

select *
FROM order_payments_clean;

SELECT shipping_limit_date 
FROM order_items_clean;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'order_items'
  AND column_name = 'shipping_limit_date';
