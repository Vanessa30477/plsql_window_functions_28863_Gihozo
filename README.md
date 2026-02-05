# Using SQL JOINs & Window Functions Assignment - Car Sales Analysis
**Course:** Database Development with PL/SQL

**Instuctor:** Eric MANIRAGUHA

**Wednesday-Group A**

**Names:** GIHOZO UWASE Vanessa

**Student_ID:** 28863

**Date:** 6th February 2026

## Business Problem
### Business Context
A car dealership manages inventory, customers, and sales transactions across different car models, price ranges, and time periods. Management needs clear, data-driven insights to understand sales performance, customer behavior, and inventory efficiency in order to improve profitability and operational decisions.
### Data Challenge
The company struggles to identify *unsold cars*, *inactive customers*, *sales trends over time*, and *high-value customers* because data is spread across multiple tables without analytical reporting.
### Expected Outcome
- Provide ways to support better pricing strategies.
- Apply effective marketing targeting customer segments.
- Discover the top bought cars in each region.
- Inventory planning by using SQL JOINs and Window Functions to extract meaningful insights from relational data.
#### 5 Smart Goals to achieve:
- Identify the top 5 best-selling products per region or quarter for performance comparison and prioritization. *Using RANK() function*
- Track running monthly sales totals to monitor cumulative revenue growth. *Using SUM() OVER() function*
- Analyze month-over-month sales changes to detect growth or decline trends. *Using LAG() or LEAD() fucntions*
- Segment customers into four spending-based quartiles for targeted marketing strategies. *Using NTILE(4)*
- Calculate three-month moving averages to smooth fluctuations and support reliable forecasting. *Using AVG() OVER() function*
## Database Schema
Description of Inventory, Customers, and Sales tables.
[Define Queries](SQL_Queries/create_customer.sql)

![Description](Screenshots/customers_desc.png)

[Define Queries](SQL_Queries/create_inv.sql)

![Description](Screenshots/inventory_desc.png)

[Define Queries](SQL_Queries/create_sales.sql)

![Description](Screenshots/sales_desc.png)

![ER Diagram](Screenshots/ER_dia.png)
## Part A: SQL JOIN Queries
1. INNER JOIN
[JOIN Queries](SQL_Queries/inner_join.sql)

''' sql
-- Combines customers with their completed transactions, returning only records where both customer and sales data exist.
SELECT s.Sale_ID,
       c.C_Name AS Customer_Name,
       i.Model_Yr,
       s.Sale_Price
FROM Sales s
INNER JOIN Customers c ON s.Customer_ID = c.Customer_ID
INNER JOIN Inventory i ON s.Car_ID = i.Car_ID;

![Join screenshot](Screenshots/inner_join.png)
Business interpretation: Shows active customers generating revenue, helping leadership focus on proven revenue contributors.
3. LEFT JOIN
[JOIN Queries](SQL_Queries/left_join.sql)
![Left Join screenshot](Screenshots/left_join.png)
Business interpretation: Identifies inactive or untapped customers, highlighting opportunities for re-engagement and growth.
5. RIGHT JOIN
[JOIN Queries](SQL_Queries/right_join.sql)
![Right Join](Screenshots/right_join.png)
Business interpretation: Exposes data capture gaps, supporting improvements in customer tracking and reporting accuracy.
7. FULL OUTER JOIN
[JOIN Queries](SQL_Queries/full_join.sql)
![Full Join](Screenshots/full_outer_join.png)
Business interpretation: Provides a complete business view, revealing both missing customers and missing sales links.
9. SELF JOIN
[JOIN Queries](SQL_Queries/self_join.sql)
![Self join](Screenshots/self_join.png)
Business interpretation: This helps identify customer segments and shared behaviors, enabling leadership to identify high-value segments and leverage peer influence for rapid growth and targeted marketing.

## Part B: Window Functions
1. Ranking Functions
- ROW_NUMBER()
[Window Functions Queries](SQL_Queries/row_num.sql)
![rank fun](Screenshots/rank().png)
Business Interpretation: This allows us to track first-time vs repeat purchases, giving insight into customer loyalty and lifecycle stages. Executives can measure how well the business converts new customers into repeat buyers.
- RANK()
[Window Functions Queries](SQL_Queries/rank.sql)
Business interpretation: This highlights top-spending customers, helping leadership prioritize VIP retention strategies and personalized offerings that protect and grow high-value revenue streams.
- DENSE_RANK()
[Window Functions Queries](SQL_Queries/dense_rank.sql)
Business interpretation:This ensures fair segmentation of customers by value, enabling precise reward tiers and loyalty programs without artificial ranking gaps that could distort performance reporting.
- PERCENT_RANK()
[Window Functions Queries](SQL_Queries/percentrank.sql)
Business interpretation: This shows how customers perform relative to the entire base, allowing executives to quickly identify whether a customer is in the top or bottom performance percentile and allocate resources accordingly.
2. Aggregate Window Functions
- SUM() OVER()
[Window Functions Queries](SQL_Queries/sum.sql)
Business interpretation: This tracks customer lifetime value growth, helping leadershiP assess whether customer relationships are becoming more profitable and whether retention strategies are working.
- AVG() OVER()
[Window Functions Queries](SQL_Queries/average.sql)
Business interpretation: This smooths out short-term fluctuations to reveal true spending behavior trends, enabling informed decisions about pricing, promotions, and long-term revenue forecasting.
- MIN() OVER()/MAX() OVER()
[Window Functions Queries](SQL_Queries/min_max.sql)
Business interpretation: This reveals customer spending boundaries, helping leadership understand risk, detect unusually low or high transactions, and refine customer segmentation strategies.
3. Navigation Functions
- LAG()
[Window Functions Queries](SQL_Queries/lag.sql)
Business interpretation: This measures changes in customer behavior over time, signaling whether customers are increasing or decreasing their spending a critical early indicator of churn or growth potential.
- LEAD
[Window Functions Queries](SQL_Queries/lead.sql)
Business interpretation: This supports predictive analysis, allowing management to anticipate future customer behavior and proactively intervene to retain or upsell customers.
4. Distribution Functions
- NTILE(4)
[Window Functions Queries](SQL_Queries/ntile.sql)
Business interpretation: This creates clear customer value tiers, enabling leadership to focus investment on top-quartile customers while designing growth strategies for mid- and low-tier segments.
- CUME_DIST()
[Window Functions Queries](SQL_Queries/cum_dist.sql)
Business interpretation: This shows what percentage of customers spend less than or equal to a given customer, offering a powerful view of revenue concentration and helping executives assess dependence on high-value customers.

## Key Insights
- Unsold cars were identified
- Inactive customers were detected
- Sales trends were observed clearly
- Customer segments was well defined

## Results Analysis
### Descriptive(What happened?)

Summarizes historical car sales and customer activity to show:

- Total sales performance and revenue trends
- Active vs inactive car buyers
- Top-selling vehicles and high-value customers
- Sales distribution across regions and time periods

Business value:
Provides a clear snapshot of sales performance and customer behavior.

### Diagnostic(Why did it happen?)

Examines patterns behind sales results by identifying:

- Why certain customers and vehicle models perform better
- Which customer segments drive most revenue
- Where sales increases or declines occur
- Data quality gaps affecting customer tracking

Business value:
Helps management understand sales drivers and performance gaps.

### Prescriptive(What should be done?)

Uses insights to recommend actions such as:

- Retaining high-value car buyers through loyalty programs
- Targeting underperforming customer segments
- Optimizing inventory based on customer demand trends
- Improving customer data capture and reporting systems

Business value:
Supports data-driven decisions to increase sales, reduce churn, and improve profitability.

## References

1. Oracle Corporation. Oracle Database SQL Language Reference.
Used for SQL syntax, JOIN operations, and window functions implementation.
2. Oracle Corporation. Oracle Database Data Warehousing Guide.
Referenced for analytical SQL concepts, window functions, and performance-oriented queries.
3.Microsoft Documentation. SQL Window Functions Overview.
Used conceptually for understanding ranking, distribution, and navigation functions.
4. GeeksforGeeks SQL Analytical Functions
5. YouTube turtorials
6. Database with PL/SQL Lecture Notes

## Integrity Statement
All sources were properly cited. Implementations and analysis represent original work. No AIgenerated content was copied without attribution or adaptation
