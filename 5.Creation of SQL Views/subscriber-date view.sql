DROP VIEW IF EXISTS suscriber_date;

CREATE VIEW suscriber_date AS
SELECT TO_CHAR(subscribe_date, 'month')AS month, 
EXTRACT(year FROM subscribe_date) AS year,
COUNT(DISTINCT subscriber_id) AS total_subscribers
FROM customer_list_clean
GROUP BY month, YEAR
ORDER BY MIN(EXTRACT(month FROM subscribe_date)), year;