SELECT 
       c.C_Name,
       s.Sale_Date,
       s.Sale_Price,
       LEAD(s.Sale_Price) OVER (
           PARTITION BY c.Customer_ID
           ORDER BY s.Sale_Date
       ) AS Next_Purchase
FROM Customers c
JOIN Sales s ON c.Customer_ID = s.Customer_ID;
