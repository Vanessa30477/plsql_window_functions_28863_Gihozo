SELECT 
    sale_date,
    sale_price,
    SUM(sale_price) OVER (ORDER BY sale_date ROWS UNBOUNDED PRECEDING) AS rows_running_total,
    SUM(sale_price) OVER (ORDER BY sale_date) AS range_running_total 
FROM sales
ORDER BY sale_date;
