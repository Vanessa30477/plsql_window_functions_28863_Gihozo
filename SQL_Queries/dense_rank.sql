SELECT c.Customer_ID,
       c.C_Name,
       SUM(s.Sale_Price) AS Total_Spent,
       DENSE_RANK() OVER (ORDER BY SUM(s.Sale_Price) DESC) AS Purchasing_Rank
FROM Customers c
JOIN Sales s ON c.Customer_ID = s.Customer_ID
GROUP BY c.Customer_ID, c.C_Name;
