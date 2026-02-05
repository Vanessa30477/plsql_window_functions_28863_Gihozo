SELECT i.Model_Yr,
       s.Sale_Price,
       DENSE_RANK() OVER (ORDER BY s.Sale_Price DESC) AS Dense_Rank
FROM Sales s
JOIN Inventory i ON s.Car_ID = i.Car_ID;
