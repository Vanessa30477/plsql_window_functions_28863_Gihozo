SELECT c.Customer_ID,
       c.C_Name,
       s.Sale_Price,
       ROUND(AVG(s.Sale_Price) OVER (PARTITION BY c.Customer_ID), 2) AS Avg_Spent
FROM Customers c
JOIN Sales s ON c.Customer_ID = s.Customer_ID;
