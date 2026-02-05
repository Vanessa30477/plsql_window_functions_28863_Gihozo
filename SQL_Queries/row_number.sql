SELECT s.Sale_ID,
       i.Model_Yr,
       s.Sale_Price,
       ROW_NUMBER() OVER (ORDER BY s.Sale_Price DESC) AS Row_Num
FROM Sales s
JOIN Inventory i ON s.Car_ID = i.Car_ID;
