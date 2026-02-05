-- Calculates the cumulative distribution of customer spending.
SELECT c.Customer_ID,
       c.C_Name,
       SUM(s.Sale_Price) AS Total_Spent,
       ROUND(CUME_DIST() OVER (ORDER BY SUM(s.Sale_Price))*100, 2) AS Spending_Distribution
FROM Customers c
JOIN Sales s ON c.Customer_ID = s.Customer_ID
GROUP BY c.Customer_ID, c.C_Name;
