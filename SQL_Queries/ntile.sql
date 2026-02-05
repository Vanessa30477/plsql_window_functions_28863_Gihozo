SELECT Customer_ID,
       Customer_Name,
       Total_Spent,
       NTILE(4) OVER (ORDER BY Total_Spent DESC NULLS LAST) AS Customer_Quartile,
         CASE NTILE(4) OVER (ORDER BY Total_Spent DESC NULLS LAST)
        WHEN 1 THEN 'VVIP'  -- Quartile 1: Highest Spenders
        WHEN 2 THEN 'MIP'       -- Quartile 2: Next Highest Spenders
        WHEN 3 THEN 'VIP'     -- Quartile 3: Mid-Range Spenders
        WHEN 4 THEN 'IP'    -- Quartile 4: Lowest Spenders
    END AS customer_status
FROM (
        SELECT c.Customer_ID,
               c.C_Name AS Customer_Name,
               SUM(s.Sale_Price) AS Total_Spent
        FROM Customers c
        LEFT JOIN Sales s
          ON c.Customer_ID = s.Customer_ID
        GROUP BY c.Customer_ID, c.C_Name
     );
