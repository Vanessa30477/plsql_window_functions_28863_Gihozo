SELECT 
    c.C_name AS Customer_Name,
    s.sale_date,
    s.sale_price,
    ROW_NUMBER() OVER (PARTITION BY s.customer_id ORDER BY s.sale_date) AS Sales_number
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
ORDER BY c.C_name, s.sale_date;
