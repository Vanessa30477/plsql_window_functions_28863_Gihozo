SELECT c.Customer_ID,
       c.C_Name
FROM Customers c
LEFT JOIN Sales s ON c.Customer_ID = s.Customer_ID
WHERE s.Sale_ID IS NULL;
