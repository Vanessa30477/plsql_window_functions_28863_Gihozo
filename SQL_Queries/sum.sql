-- Computes cumulative or rolling customer revenue over time using defined row frames.
SELECT 
    s.Sale_Date,
    s.Sale_Price,
    i.Purchase_Price,
    (s.Sale_Price - i.Purchase_Price) AS Profit,
    SUM(s.Sale_Price) OVER (
        ORDER BY s.Sale_Date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS Running_Total
FROM Sales s
JOIN Inventory i
    ON s.car_id = i.car_id;
