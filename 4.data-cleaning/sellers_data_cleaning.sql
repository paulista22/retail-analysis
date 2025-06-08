SELECT *
FROM sellers_clean;

--Number of sellers per country
SELECT seller_country, count(seller_name) AS total_sellers_per_country
from sellers_clean
group by seller_country
ORDER BY total_sellers_per_country DESC;