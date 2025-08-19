# E-commerce Retail Analysis – Fecom Inc. (2022–2024)
A comprehensive retail dataset from a fictional European e-commerce company, containing over 100,000 orders across 8 interconnected tables, covering customers, products, and transactions between 2022 and 2024.
The objective of this project is to analyze sales data from Fecom Inc. to answer key business questions. The analysis will focus on identifying:

Geographic Performance: The top three countries by sales volume.

Product Insights: The types of products most frequently purchased in those top countries, as well as the company's overall best-selling items.

Customer Profiling: The key characteristics of the most valuable customer segments, both overall and within the top-performing regions.

Seasonal Trends: How sales vary throughout the year in order to optimize inventory.
## Project Diagram
![Data diagram](image/project%20diagram.png)
## Steps
1. [Data Download](https://www.kaggle.com/datasets/cemeraan/fecom-inc-e-com-marketplace-orders-data-crm)
2. [Database creation](https://github.com/paulista22/retail-analysis/tree/main/2.Database%20Creation)
3. [Exploratory Data Analysis (EDA) in Jupyter Notebook](https://github.com/paulista22/retail-analysis/tree/main/3.exploratory%20data%20analysis)
4. [Data Cleaning and Transformation](https://github.com/paulista22/retail-analysis/tree/main/4.data-cleaning)
5. [Creation of SQL Views](https://github.com/paulista22/retail-analysis/tree/main/5.Creation%20of%20SQL%20Views)
## Dashboards
### Analysis of customer profile
**Dashboard Objective:** 
Provide a comprehensive view of subscriber profiles and purchasing behavior from 2021 to 2024, in order to generate insights that support customer segmentation, optimize marketing campaigns, and prioritize the markets with the greatest potential.

**Finding 1: Geographic Dominance**
The analysis reveals that Germany, France, and the Netherlands are the top three markets for both sales and orders.

**Finding 2: Key Demographic Profile**
The highest-spending customer profile is male, accounting for 56.34% of sales.

The average subscriber age is 38, with the 20-40 age range concentrating the most spending.

**Finding 3: Business Growth and Value**
The customer base grew to 96,100 subscribers, with a peak in growth during 2024.

In total, customers generated €13.59 million in sales.

![Data diagram](6.Dashboards/Analysis%20of%20customer%20profile.png)
### Analysis of category products
**Dashboard Objective:**  
Highlight the top-rated and most purchased product categories, along with preferred payment methods, to support strategic decisions in product and sales management.

**Finding 1: Payment Method Preference**
Credit Card is the primary payment method used by customers.

**Finding 2: Product Performance Analysis by Volume vs. Satisfaction**
The "Bed Bath Table," "Health Beauty," and "Sports Leisure" categories accumulate the highest number of orders, representing the core of the sales volume.

In contrast, Media products (DVDs, Books) and Children's Fashion receive the highest customer satisfaction scores.

**Finding 3: Strategic Opportunity in the Satisfaction Gap**
A key strategic gap was identified: the best-selling products are not the same as the highest-rated products. This presents an opportunity to analyze and improve the satisfaction of the high-volume categories.

![Data diagram](6.Dashboards/Analysis%20of%20category%20products.png)

### Analysis of orders
**Dashboard Objective:**
Monitor delivery times and order fulfillment rates to identify delays, optimize operations, and ensure timely customer deliveries.

**Finding 1: Delivery Performance**
91.89% of orders were delivered on time, with only 0.63% cancelled.

**Finding 2: Median Delivery Time**
Half of all orders are delivered within 12 days.

**Finding 3: Monthly Trends**
March 2024 had the most late deliveries; January had the most on-time deliveries.

**Finding 4: Key Market**
Germany had the highest order volume, with an average delivery time of 8 days.
![Data diagram](6.Dashboards/Analysis%20of%20orders.png)

### Analysis of sales and orders
**Dashboard Objective:**
To monitor and analyze the commercial performance and operational health of the sales process.

**Finding 1: Peak Order Month**
November 2023 recorded the highest number of orders, highlighting strong customer activity during that period.

**Finding 2: Peak Sales Month**
May 2024 achieved the highest sales revenue, totaling €1,018,473, indicating a key month for business performance.

**Finding 3: Average Cart Value**
The average purchase value remained stable between €125 and €145 from January 2023 to September 2025, showing consistent customer spending behavior.

**Finding 4: Payment Method Preference**
Customers primarily use credit cards (73%), followed by debit cards (19%), indicating a strong preference for card payments.
![Data diagram](6.Dashboards/Analysis%20of%20sales%20and%20orders.png)

### Analysis of sales team
**Dashboard Objective:**
Track sales volume, revenue by store, and top-selling products to support strategic sales decisions and optimize commercial performance.

**Finding 1: Orders vs Revenue**
Strong positive correlation: segments with more orders generate the most revenue.

**Finding 2: Top-Selling Store**
BorealBloom leads with 1,981 total orders.

**Finding 3: Top Market and Products**
Germany is the top-selling country; best-selling categories are Bed Bath Table, Health Beauty, and Watches & Gift.
![Data diagram](6.Dashboards/Analysis%20of%20sales%20team.png)

### General Conclusions

**Key Markets Identified:** Germany, France, and the Netherlands account for the majority of sales and orders, highlighting priority geographic regions for commercial strategies.

**High-Value Customer Segments:** The highest-spending customer is male, aged 20-40, allowing targeted marketing campaigns and promotions.

**Product Performance and Satisfaction:** The top-selling categories (“Bed Bath Table,” “Health Beauty,” and “Sports Leisure”) do not match the highest-rated products, indicating an opportunity to improve customer experience.

**Strong Operational Performance:** Most orders (91.89%) are delivered on time, with a minimal cancellation rate (0.63%), although certain months (e.g., March 2024) show delivery delays.

**Sales Trends:** There is a strong positive correlation between order volume and total revenue, confirming that the segments with the most orders also generate the highest sales. BorealBloom and Germany stand out as key contributors.

**Stable Purchase Behavior:** Average cart value remains steady between €125 and €145, and most customers prefer credit cards, which allows for predictable revenue and payment strategy planning.

### Strategic Recommendations

**Optimize Inventory and Logistics:** Analyze the causes of delays in specific months (like March) to reduce late deliveries and enhance customer experience.

**Increase Satisfaction in High-Volume Categories:** Implement improvements in “Bed Bath Table,” “Health Beauty,” and “Sports Leisure” to align high sales volumes with customer satisfaction.

**Focus Marketing by Geography and Segment:** Prioritize campaigns in Germany, France, and the Netherlands, targeting male customers aged 20-40 who contribute the most revenue.

**Promote Top Products in Key Markets:** Boost sales of Bed Bath Table, Health Beauty, and Watches & Gift in Germany, where demand is already strong.

**Strengthen Preferred Payment Methods:** Maintain and promote credit card payment options, which account for 73% of transactions.

**Continuous Store Performance Monitoring:** Evaluate the performance of stores like BorealBloom to replicate best practices across other locations.
