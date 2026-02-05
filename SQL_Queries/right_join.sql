SELECT i.Car_ID,
       i.Manufacturer,
       i.Model_Yr
FROM Sales s
RIGHT JOIN Inventory i ON s.Car_ID = i.Car_ID
WHERE s.Sale_ID IS NULL;
