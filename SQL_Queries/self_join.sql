SELECT c1.C_Name AS Customer1,
       c2.C_Name AS Customer2,
       c1.Address
FROM Customers c1
JOIN Customers c2
  ON c1.Address = c2.Address
 AND c1.Customer_ID <> c2.Customer_ID;
