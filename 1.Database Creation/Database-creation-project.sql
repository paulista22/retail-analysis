--CREATE DATABASE project;

CREATE TABLE customer_list_clean (
    Customer_Trx_ID VARCHAR(50),
    Subscriber_ID VARCHAR(50),
    Subscribe_Date DATE,
    First_Order_Date DATE,
    Customer_Postal_Code VARCHAR(20),
    Customer_City VARCHAR(100),
    Customer_Country VARCHAR(100),
    Customer_Country_Code VARCHAR(10),
    Age INT,
    Gender VARCHAR(10)
);  

CREATE TABLE order_payments_clean (
    Order_ID VARCHAR(50),
    Payment_Sequential INT,
    Payment_Type VARCHAR(50),
    Payment_Installments INT,
    Payment_Value FLOAT
);

CREATE TABLE order_reviews_clean (
    Review_ID VARCHAR(50),
    Order_ID VARCHAR(50),
    Review_Score FLOAT,
    Review_Comment_Title_En TEXT,
    Review_Comment_Message_En TEXT,
    Review_Creation_Date DATE,
    Review_Answer_Timestamp TIMESTAMP
);

DROP TABLE IF EXISTS order_reviews_clean;

CREATE TABLE order_reviews_clean (
    Review_ID VARCHAR(255),
    Order_ID VARCHAR(255),
    Review_Score FLOAT,
    Review_Comment_Title_En TEXT,
    Review_Comment_Message_En TEXT,
    Review_Creation_Date DATE,
    Review_Answer_Timestamp TIMESTAMP
);

CREATE TABLE geolocations_clean (
    Geo_Postal_Code VARCHAR(20),
    Geo_Lat VARCHAR(30),
    Geo_Lon VARCHAR(30),
    Geolocation_City VARCHAR(100),
    Geo_Country VARCHAR(100)
);

CREATE TABLE order_items_clean (
    Order_ID VARCHAR(50),
    Order_Item_ID INT,
    Product_ID VARCHAR(50),
    Seller_ID VARCHAR(50),
    Shipping_Limit_Date TIMESTAMP,
    Price FLOAT,
    Freight_Value FLOAT
);

CREATE TABLE orders_clean (
    Order_ID VARCHAR(50),
    Customer_Trx_ID VARCHAR(50),
    Order_Status VARCHAR(50),
    Order_Purchase_Timestamp TIMESTAMP,
    Order_Approved_At TIMESTAMP,
    Order_Delivered_Carrier_Date TIMESTAMP,
    Order_Delivered_Customer_Date TIMESTAMP,
    Order_Estimated_Delivery_Date TIMESTAMP
);

CREATE TABLE products_clean (
    Product_ID VARCHAR(50),
    Product_Category_Name VARCHAR(100),
    Product_Weight_Gr FLOAT,
    Product_Length_Cm FLOAT,
    Product_Height_Cm FLOAT,
    Product_Width_Cm FLOAT
);

CREATE TABLE sellers_clean (
    Seller_ID VARCHAR(50),
    Seller_Name VARCHAR(100),
    Seller_Postal_Code VARCHAR(20),
    Seller_City VARCHAR(100),
    Country_Code VARCHAR(10),
    Seller_Country VARCHAR(100)
);





