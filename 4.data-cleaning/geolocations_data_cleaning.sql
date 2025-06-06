SELECT *
FROM geolocations_cleaN;

select count(*)
FROM geolocations_clean
WHERE geo_postal_code IS NULL;

DELETE FROM geolocations_clean
WHERE geo_postal_code IS NULL;

select count(*)
from geolocations_clean;

SELECT DISTINCT geo_postal_code
from geolocations_clean;

SELECT DISTINCT geo_lat
from geolocations_clean
ORDER BY geo_lat ASC;

SELECT DISTINCT geolocation_city
from geolocations_clean;

UPDATE geolocations_clean
SET geolocation_city = 'České Budějovice'
WHERE geolocation_city = '?eské Bud?jovice';


SELECT DISTINCT geolocation_city
from geolocations_clean
ORDER BY geolocation_city ASC;

UPDATE geolocations_clean
SET geolocation_city = 'České Budějovice'
WHERE geolocation_city = '?eské Bud?jovice';

UPDATE geolocations_clean
SET geolocation_city = '''s-Hertogenbosch'
WHERE geolocation_city = '''s-Hertogenbosch';

UPDATE geolocations_clean
SET geolocation_city = 'Łódź'
WHERE geolocation_city = '?ód?';

UPDATE geolocations_clean
SET geolocation_city = 'Białystok'
WHERE geolocation_city = 'Bia?ystok';

UPDATE geolocations_clean
SET geolocation_city = 'Biel/Bienne'
WHERE geolocation_city = 'Biel/Bienne';

UPDATE geolocations_clean
SET geolocation_city = 'Gdańsk'
WHERE geolocation_city = 'Gda?sk';

UPDATE geolocations_clean
SET geolocation_city = 'Klaipėda'
WHERE geolocation_city = 'Klaip?da';

UPDATE geolocations_clean
SET geolocation_city = 'Plzeň (Pilsen)'
WHERE geolocation_city = 'Plze? (Pilsen)';

UPDATE geolocations_clean
SET geolocation_city = 'Poznań'
WHERE geolocation_city = 'Pozna?';

UPDATE geolocations_clean
SET geolocation_city = 'Toruń'
WHERE geolocation_city = 'Toru?';

SELECT DISTINCT geolocation_city
from geolocations_clean
ORDER BY geolocation_city ASC;

SELECT DISTINCT geolocation_city
from geolocations_clean
WHERE geolocation_city = '%?%'
ORDER BY geolocation_city ASC;

SELECT DISTINCT geo_country
FROM geolocations_clean
ORDER BY geo_country ASC;

SELECT COUNT (*)
FROM geolocations_clean;