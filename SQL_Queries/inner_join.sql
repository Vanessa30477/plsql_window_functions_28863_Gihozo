-- Combines customers with their completed transactions, returning only records where both customer and sales data exist.
SELECT s.Sale_ID,
       c.C_Name AS Customer_Name,
       i.Model_Yr,
       s.Sale_Price
FROM Sales s
INNER JOIN Customers c ON s.Customer_ID = c.Customer_ID
INNER JOIN Inventory i ON s.Car_ID = i.Car_ID;
