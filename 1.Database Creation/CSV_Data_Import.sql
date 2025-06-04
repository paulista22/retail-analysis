COPY customer_list_clean 
FROM 'C:\Users\paubr\projects\retail-analysis\Data\Fecom Inc Customer List.csv' 
WITH (FORMAT csv, HEADER, DELIMITER ',');

COPY order_payments_clean
FROM 'C:\Users\paubr\projects\retail-analysis\Data\Fecom Inc Order Payments.csv' 
WITH (FORMAT csv, HEADER, DELIMITER ',');

COPY order_reviews_clean
FROM 'C:\Users\paubr\projects\retail-analysis\Data\Fecom_Inc_Order_Reviews_No_Emojis.csv' 
WITH (FORMAT csv, HEADER, DELIMITER ',');

COPY geolocations_clean
FROM 'C:\Users\paubr\projects\retail-analysis\Data\Fecom Inc Geolocations.csv' 
WITH (FORMAT csv, HEADER, DELIMITER ';');

COPY order_items_clean
FROM 'C:\Users\paubr\projects\retail-analysis\Data\Fecom Inc Order Items.csv' 
WITH (FORMAT csv, HEADER, DELIMITER ';');

COPY orders_clean
FROM 'C:\Users\paubr\projects\retail-analysis\Data\Fecom Inc Orders.csv' 
WITH (FORMAT csv, HEADER, DELIMITER ';');

COPY products_clean
FROM 'C:\Users\paubr\projects\retail-analysis\Data\Fecom Inc Products.csv' 
WITH (FORMAT csv, HEADER, DELIMITER ';');