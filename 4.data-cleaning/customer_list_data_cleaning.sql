
SELECT *
FROM customer_list_clean
WHERE first_order_date IS NULL;

SELECT *
FROM customer_list_clean
WHERE first_order_date IS NULL
   OR customer_trx_id = 'UNKNOWN';

SELECT count(*)
FROM customer_list_clean
WHERE first_order_date IS NULL
   OR customer_trx_id = 'UNKNOWN';

SELECT COUNT(*)
FROM customer_list_clean;

DELETE FROM customer_list_clean
WHERE first_order_date IS NULL
   OR customer_trx_id = 'UNKNOWN';

SELECT *
FROM customer_list_clean
WHERE first_order_date IS NULL
   OR customer_trx_id = 'UNKNOWN';

SELECT *
FROM customer_list_clean;

SELECT DISTINCT customer_city
FROM customer_list_clean
ORDER BY customer_citY ASC;

UPDATE customer_list_clean
SET customer_city = 'Łódź'
WHERE customer_city = '?ód?';

UPDATE customer_list_clean
SET customer_city = 'České Budějovice'
WHERE customer_city = '?eské Bud?jovice';

UPDATE customer_list_clean
SET customer_city = 's-Hertogenbosch'
WHERE customer_city = '''s-Hertogenbosch';

SELECT DISTINCT customer_city
FROM customer_list_clean
ORDER BY customer_citY ASC;


SELECT DISTINCT customer_country, 
FROM customer_list_clean
ORDER BY customer_country ASC;

SELECT *
FROM customer_list_clean;