DROP VIEW IF EXISTS country_city_clients;

CREATE VIEW  country_city_clients AS
SELECT customer_country, count(subscriber_id) AS total_clients, customer_city, count(subscriber_id) AS total_clients_city
FROM customer_list
GROUP BY customer_country, customer_city;