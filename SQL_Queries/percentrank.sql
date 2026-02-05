-- Calculates a customer’s relative position compared to all other customers in percentages.
SELECT 
    i.manufacturer AS Car_Type,
    SUM(s.sale_price) AS Total_revenue,
    ROUND(PERCENT_RANK() OVER (ORDER BY SUM(s.sale_price)) * 100, 2) AS percent_rank
FROM sales s
JOIN inventory i ON s.car_id = i.car_id
GROUP BY i.manufacturer
ORDER BY total_revenue DESC;
