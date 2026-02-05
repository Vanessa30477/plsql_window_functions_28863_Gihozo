SELECT c.C_Name AS Customer_Name,
       i.Model_Yr
FROM Customers c
FULL OUTER JOIN Sales s ON c.Customer_ID = s.Customer_ID
FULL OUTER JOIN Inventory i ON s.Car_ID = i.Car_ID;
