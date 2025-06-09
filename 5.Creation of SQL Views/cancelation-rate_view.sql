DROP VIEW IF EXISTS cancellation_rate_view;
 
CREATE VIEW cancellation_rate_view AS
SELECT 
    (c.total_canceled * 100.0) / t.totals AS cancellation_rate
FROM 
    (SELECT COUNT(*) AS total_canceled FROM orders_clean WHERE order_status = 'canceled') AS c,
    (SELECT COUNT(*) AS totals FROM orders_clean) AS t;