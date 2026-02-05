-- Ranks customers based on spending value, without ties.
SELECT i.Manufacturer,
       i.Model_Yr,
       s.Sale_Price,
       RANK() OVER (ORDER BY s.Sale_Price DESC) AS Price_Rank
FROM Sales s
JOIN Inventory i ON s.Car_ID = i.Car_ID;
