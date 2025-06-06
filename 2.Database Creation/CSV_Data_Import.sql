\copy customer_list FROM 'C:\\Users\\paubr\\projects\\retail-analysis\\1.Data loaded\\Fecom Inc Customer List.csv' WITH (FORMAT csv, HEADER, DELIMITER ',');

\copy order_payments FROM 'C:\\Users\\paubr\\projects\\retail-analysis\\1.Data loaded\\Fecom Inc Order Payments.csv' WITH (FORMAT csv, HEADER, DELIMITER ',');

\copy order_reviews FROM 'C:\\Users\\paubr\\projects\\retail-analysis\\1.Data loaded\\Fecom_Inc_Order_Reviews_No_Emojis.csv' WITH (FORMAT csv, HEADER, DELIMITER ',');

\copy geolocations FROM 'C:\\Users\\paubr\\projects\\retail-analysis\\1.Data loaded\\Fecom Inc Geolocations.csv' WITH (FORMAT csv, HEADER, DELIMITER ';');

\copy order_items FROM 'C:\\Users\\paubr\\projects\\retail-analysis\\1.Data loaded\\Fecom Inc Order Items.csv' WITH (FORMAT csv, HEADER, DELIMITER ';');

\copy orders FROM 'C:\\Users\\paubr\\projects\\retail-analysis\\1.Data loaded\\Fecom Inc Orders.csv' WITH (FORMAT csv, HEADER, DELIMITER ';');

\copy products FROM 'C:\\Users\\paubr\\projects\\retail-analysis\\1.Data loaded\\Fecom Inc Products.csv' WITH (FORMAT csv, HEADER, DELIMITER ';');

\copy sellers FROM 'C:\\Users\\paubr\\projects\\retail-analysis\\1.Data loaded\\sellers list.csv' WITH (FORMAT csv, HEADER, DELIMITER ';');