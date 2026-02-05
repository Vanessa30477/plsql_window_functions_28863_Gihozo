SELECT 
    i.Manufacturer AS Car_Type,
    s.sale_date,
    s.sale_price,
    MIN(s.sale_price) OVER (PARTITION BY i.car_id) AS min_sale_amount,
    MAX(s.sale_price) OVER (PARTITION BY i.car_id) AS max_sale_amount
FROM sales s
JOIN inventory i ON s.car_id = i.car_id
ORDER BY i.manufacturer, s.sale_date;
