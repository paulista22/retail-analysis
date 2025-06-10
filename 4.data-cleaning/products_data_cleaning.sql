SELECT *
FROM products_clean
WHERE product_weight_gr IS NULL;

SELECT * 
FROM products_clean
WHERE product_category_name = '#N/A';

SELECT COUNT(*) totals_order_baby
FROM products_clean
WHERE product_id = '09ff539a621711667c43eba6a3bd8466';

DELETE FROM products_clean 
WHERE product_id IN ('09ff539a621711667c43eba6a3bd8466', '5eb564652db742ff8f28759cd8d2652a');

SELECT *
FROM products_clean
WHERE product_weight_gr IS NULL;