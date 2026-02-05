# Using SQL JOINs & Window Functions Assignment - Car Sales Analysis
**Course:** Database Development with PL/SQL
**Instuctor:** Eric MANIRAGUHA
**Wednesday-Group A**
**Names:** GIHOZO UWASE Vanessa
**ID:**28863
**Date:** 6th February 2026
## Business Problem
### Business Context
A car dealership manages inventory, customers, and sales transactions across different car models, price ranges, and time periods. Management needs clear, data-driven insights to understand sales performance, customer behavior, and inventory efficiency in order to improve profitability and operational decisions.
### Data Challenge
Raw transactional data alone does not reveal trends, rankings, or customer patterns. Without combining tables and analyzing sales over time, the business cannot identify top-performing vehicles, inactive customers, or seasonal sales behavior.
### Expected Outcome
- Provide ways to support better pricing strategies.
- Apply effective marketing targeting customer segments.
- Discover the top bought cars in each region.
- Inventory planning by using SQL JOINs and Window Functions to extract meaningful insights from relational data.
#### 5 Smart Goals to achieve:
- Identify the top 5 best-selling products per region or quarter for performance comparison and prioritization. *Using RANK() function*
- Track running monthly sales totals to monitor cumulative revenue growth.*Using SUM() OVER() function*
- Analyze month-over-month sales changes to detect growth or decline trends.*Using LAG() or LEAD() fucntions*
- Segment customers into four spending-based quartiles for targeted marketing strategies.*Using NTILE(4)*
- Calculate three-month moving averages to smooth fluctuations and support reliable forecasting.*Using AVG() OVER() function*
## Database Schema
Description of Inventory, Customers, and Sales tables.
(Insert ER diagram image)

## SQL JOIN Queries
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL OUTER JOIN
5. SELF JOIN
(Include screenshots + interpretation)

## Window Functions
1. Ranking Functions
2. Aggregate Window Functions
3. Navigation Functions
4. Distribution Functions
(Include screenshots + interpretation)

## Key Insights
- Unsold cars identified
- Inactive customers detected
- Sales trends observed
- Customer segments defined

## Results Analysis
- Descriptive
- Diagnostic
- Prescriptive

## References
Oracle SQL Documentation

## Integrity Statement
All sources were properly cited. Implementations and analysis represent original work. No AIgenerated content was copied without attribution or adaptation
